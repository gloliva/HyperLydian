/*
    Invert or reverse a pattern value list.

    Inspired by 12-tone technique transformations, such as taking the inversion or retrograde
    of a sequence of notes. Shout out to Schoenberg.

    Available modes:
    - 0: identity; keep pattern exactly the same
    - 1: note reverse; reverse the note values, but keep them in the same position respecting rests
    - 2: true reverse; reverse the entire pattern
    - 3: inverse; calculate distances between non-rest notes, and swap the direction
    - 4: reverseInverse; calculates the Inverse, then reverses this pattern

    Author: gloliva
*/

inlets = 4;
outlets = 2;
autowatch = 1;

// Input/Output variables
var patternOut = new Array();
var envelopeIn = new Array();
var envelopeOut = new Array();

// Pattern Variables
var scaleLength = 7;
var updateMode = 0;
var restValue = -1;
var maxPatternRange = 15;

// Envelope variables
var matrixRow = 0;
var full = 0;
var attack = 1;
var sustain = 2;
var release = 3;

// Swapping sustain values for reverse modifier
var envelopeInverseMap = {};
envelopeInverseMap[full] = full;
envelopeInverseMap[attack] =release;
envelopeInverseMap[sustain] = sustain;
envelopeInverseMap[release] = attack;


// set inlet/outlet assist
setinletassist(0, "Sequence Pattern List");
setinletassist(1, "Sequence Envelope List");
setinletassist(2, "Sequence Update Mode");
setinletassist(3, "Scale Length");

setoutletassist(0, "Output Pattern Sequence");
setoutletassist(1, "Output Envelope Sequence");


function msg_int(i) {
    /*
        An integer is passed through an inlet.
        Used to assign the update mode and the sequence scale length.
    */
    if (inlet == 2) {
        updateMode = i;
    } else if (inlet == 3) {
        scaleLength = i;
    }
}


function list() {
    /*
        A list is passed through an inlet.
        Used to assign the envelope sequence and note sequence.

        A list through the first inlet calls the corresponding transformation function.
    */

    // Perform sequence modification
    if (inlet == 0) {
        if (envelopeIn.length <= 0) {
            throw new Error("Sustain List has not been set");
        }

        var patternIn = arrayfromargs(arguments);
        if (updateMode == 0) {
            identity(patternIn);
        } else if (updateMode == 1) {
            noteReverse(patternIn);
        } else if (updateMode == 2) {
            trueReverse(patternIn);
        } else if (updateMode == 3) {
            inverse(patternIn);
        } else {
            reverseInverse(patternIn);
        }
        output();
    // Copy Sustain list
    } else if (inlet == 1) {
        envelopeIn = new Array();
        for (var i = 0; i < arguments.length; i++) {
            envelopeIn[i] = arguments[i];
        }
    }
}


function output() {
    /*
        Outputs the new envelope through outlet 2 and the new pattern through outlet 1
    */
    if (envelopeOut.length > 0) {
        outlet(1, envelopeOut);
    }
    outlet(0, patternOut);
}


function identity(patternIn) {
    /*
        Identity transformation function. Keep everything exactly as-is.
        Ensures that there aren't too many transformations being done.
    */
    patternOut = new Array(patternIn.length);
    envelopeOut = new Array();

    // copy over list as is
    for (var i = 0; i < patternIn.length; i++){
        patternOut[i] = patternIn[i];
    }

    // copy over sustain list as is
    for (var i = 0; i < envelopeIn.length; i++) {
        envelopeOut.push(i, matrixRow, envelopeIn[i]);
    }
}


function noteReverse(patternIn) {
    /*
        Reverses note values while keeping notes in the same order respective of rest placement.

        Input list: [1, rest, 4, 5, rest, rest, 7]
        Output list: [7, rest, 5, 4, rest, rest, 1]
    */
    patternOut = new Array(patternIn.length);
    envelopeOut = new Array();
    var enabledNotes = new Array();
    var enabledIndexes = new Array();

    // fill with rests
    for (var i = 0; i < patternOut.length; i++) {
        patternOut[i] = restValue;
    }

    for (var i = 0; i < patternIn.length; i++) {
        var note = patternIn[i];
        if (note >= 0) {
            enabledNotes.push(note);
            enabledIndexes.push(i);
        }
    }

    enabledIndexes.reverse()
    var note;
    var idx;
    for (var i = 0; i < enabledNotes.length; i++) {
        note = enabledNotes[i];
        idx = enabledIndexes[i];

        patternOut[idx] = note;
    }

    // copy over sustain list as is
    for (var i = 0; i < envelopeIn.length; i++) {
        envelopeOut.push(i, matrixRow, envelopeIn[i]);
    }
}


function trueReverse(patternIn) {
    /*
        Reverses the entire pattern.

        Input list: [1, rest, 4, 5, rest, rest, 7]
        Output list: [7, rest, rest, 5, 4, rest, 1]
    */
    patternOut = new Array(patternIn.length);
    envelopeOut = new Array();

    // copy over list in reverse
    for (var i = patternIn.length - 1; i >= 0; i--) {
        patternOut[i] = patternIn[patternIn.length - i - 1];
    }

    // copy over sustain in reverse, swapping attack and release values
    var currElem;
    for (var i = envelopeIn.length - 1; i >= 0; i--) {
        currElem = envelopeIn[envelopeIn.length - i - 1];
        envelopeOut.push(envelopeIn.length - i - 1, matrixRow, envelopeInverseMap[currElem]);
    }
}


function inverse(patternIn) {
    /*
        Calculate distances between non-rest notes, and swap the direction.
        Inspired by inversion transformation from the 12-tone technique; however, instead of swapping
        the true distance between notes (such as m3 becoming a M6), just swaps the "distance" between the notes
        in the scale, so a distance of 3 scale indexes becomes -3.

        Input list: [5, 3, rest, 6, 2, rest]
        Output list: [5, 7, rest, 4, 8, rest]
    */
    patternOut = new Array(patternIn.length);
    envelopeOut = new Array();

    // lists for handling distance calculations
    distanceList = new Array();
    updatedList = new Array();

    // first distance calculation will always be 0
    distanceList.push(0);
    // updatedList starts the same as patternIn
    updatedList.push(patternIn[0]);

    var prev = patternIn[0];
    var curr = 0;

    // calculate distances between consecutive non-rest notes
    for (var i = 1; i < patternIn.length; i++) {
        curr = patternIn[i];
        if (curr == restValue) {
            // skip values that are -1
            distanceList.push(0);
        } else {
            distanceList.push(prev - curr);
            prev = curr;
        }
    }

    // create updatedList based on distance calculations
    var prev_idx = 0;
    for (var i = 1; i < distanceList.length; i++) {
        if (patternIn[i] == -1) {
            // keep rest notes
            updatedList.push(-1);
        } else {
            updatedList.push((updatedList[prev_idx] + distanceList[i]) % maxPatternRange);
            prev_idx = i;
        }
    }

    // copy updatedList in patternOut
    for (var i = 0; i < updatedList.length; i++) {
        patternOut[i] = updatedList[i];
    }

    // copy over sustain list as is
    for (var i = 0; i < envelopeIn.length; i++) {
        envelopeOut.push(i, matrixRow, envelopeIn[i]);
    }

    return updatedList;
}


function reverseInverse(patternIn) {
    /*
        Performs an inversion, then performs a true reverse.

        Input list: [5, 3, rest, 6, 2, rest]
        Output list: [rest, 8, 4, rest, 7, 5]
    */
    var updatedList = inverse(patternIn);
    trueReverse(updatedList);
}
