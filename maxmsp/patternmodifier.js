/*
    Modify a pattern based on a number of different modes.

    Available modes:
    - 0: Convert rests to notes
    - 1: Convert notes to rests
    - 2: Convert to steps
    - 3: Convert to leaps
    - 4: Constrained Chaos (Drunken walk change notes)
    - 5: Complete Chaos (total random notes)

    Author: gloliva
*/

inlets = 4;
outlets = 2;
autowatch = 1;

// Input/Output variables
var envelopeIn = new Array();
var patternOut = new Array();
var envelopeOut = new Array();
var extraArgs;

// Pattern variables
var updateMode = 0;
var restValue = -1;
var maxPatternRange = 15;

// Envelope variables
var matrixRow = 0;
var full = 0;
var attack = 1;
var sustain = 2;
var release = 3;


// set inlet/outlet assist
setinletassist(0, "Sequence Pattern List");
setinletassist(1, "Sequence Envelope List");
setinletassist(2, "Sequence Update Mode");
setinletassist(3, "Extra Arguments");

setoutletassist(0, "Output Pattern Sequence");
setoutletassist(1, "Output Envelope Sequence");


function msg_int(i) {
    if (inlet == 2) {
        updateMode = i;
    } else if (inlet == 3) {
        extraArgs = i;
    }
}


function msg_float(f) {
    if (inlet == 3) {
        extraArgs = f;
    }
}


function list() {
    // Call Pattern modifier function
    if (inlet == 0) {
        // Make sure envelopeIn is set
        if (envelopeIn.length <= 0) {
            throw new Error("Sustain List has not been set");
        }

        var patternIn = arrayfromargs(arguments);

        switch (updateMode) {
            case 0:
                restsToNotes(patternIn);
                break;
            case 1:
                notesToRests(patternIn);
                break;
            case 2:
                convertToSteps(patternIn);
                break;
            case 3:
                convertToLeaps(patternIn);
                break;
            case 4:
                constrainedChaos(patternIn);
                break;
            case 5:
                completeChaos(patternIn);
                break;
        }

        output();
    // Copy Sustain list over
    } else if (inlet == 1) {
        envelopeIn = new Array();
        for (var i = 0; i < arguments.length; i++) {
            envelopeIn[i] = arguments[i];
        }
    // Update any extra args
    } else if (inlet == 3) {
        extraArgs = arrayfromargs(arguments);
    }
}


function output() {
    if (envelopeOut.length > 0) {
        outlet(1, envelopeOut);
    }
    outlet(0, patternOut);
}


function restsToNotes(patternIn) {
    var probability = extraArgs;
    var noteFrequency = {};

    patternOut = new Array();
    envelopeOut = new Array();

    // find note frequencies for current pattern
    var currNote;
    for (var i = 0; i < patternIn.length; i++) {
        currNote = patternIn[i];

        if (noteFrequency.hasOwnProperty(currNote)) {
            noteFrequency[currNote] += 1;
        } else {
            noteFrequency[currNote] = 1;
        }
    }

    // split into values and weights
    var notes = new Array();
    var weights = new Array();
    for (var note in noteFrequency) {
        var freq = noteFrequency[note];
        notes.push(note);
        weights.push(freq);
    }

    // go through pattern, updating rests to notes
    var currValue;
    var note;
    for (var i = 0; i < patternIn.length; i++) {
        currValue = patternIn[i];
        if (currValue === restValue && Math.random() < probability) {
            note = parseInt(weightedChoice(notes, weights));
            if (note === restValue) {
                note = randInt(0, maxPatternRange - 1);
            }
            patternOut[i] = note;
        } else {
            patternOut[i] = currValue;
        }
    }

    // copy over envelope list
    for (var i = 0; i < envelopeIn.length; i++) {
        envelopeOut.push(i, matrixRow, envelopeIn[i]);
    }
}


function notesToRests(patternIn) {
    var probability = extraArgs[0];
    var maxChanges = extraArgs[1];
    var numChanges = 0;

    patternOut = new Array();
    envelopeOut = new Array();

    // Update notes to rests based on probability
    for (var i = 0; i < patternIn.length; i++) {
        if (Math.random() < probability && numChanges < maxChanges) {
            patternOut[i] = restValue;
            numChanges += 1;
        // else copy over same value
        } else {
            patternOut[i] = patternIn[i];
        }
    }

    // Update envelope list
    var tempEnvList = new Array(envelopeIn.length);
    var prevEnv;
    var currEnv;
    var nextEnv;
    for (var i = 0; i < envelopeIn.length; i++) {
        if (patternOut[i] === restValue) {
            // check before
            if (i > 0) {
                prevEnv = envelopeIn[i - 1];

                if (prevEnv === attack) {
                    prevEnv = full;
                } else if (prevEnv === sustain) {
                    prevEnv = release;
                }

                tempEnvList[i - 1] = prevEnv;
            }

            // check after
            if (i < envelopeIn.length - 1) {
                nextEnv = envelopeIn[i + 1];

                if (nextEnv === release) {
                    nextEnv = full;
                } else if (nextEnv === sustain) {
                    nextEnv = attack;
                }

                tempEnvList[i + 1] = nextEnv;
            }

            currEnv = full;
        } else {
            currEnv = envelopeIn[i];
        }

        tempEnvList[i] = currEnv;
    }

    // Copy over new Env values in the correct format
    for (var i = 0; i < tempEnvList.length; i++) {
        envelopeOut.push(i, matrixRow, tempEnvList[i]);
    }
}


function convertToSteps(patternIn) {

}


function convertToLeaps(patternIn) {

}


function constrainedChaos(patternIn) {
    var probability = extraArgs[0];
    var min = extraArgs[1];
    var max = extraArgs[2];

    patternOut = new Array();
    envelopeOut = new Array();

    // Update current notes in a "contained" random way
    var currVal;
    for (var i = 0; i < patternIn.length; i++) {
        // random value
        if (Math.random() < probability) {
            currVal = patternIn[i] + randInt(min, max);
            currVal = Math.max(restValue, Math.min(maxPatternRange - 1, currVal));
            patternOut[i] = currVal;
        // else copy over same value
        } else {
            patternOut[i] = patternIn[i];
        }
    }

    // copy over envelope list
    for (var i = 0; i < envelopeIn.length; i++) {
        envelopeOut.push(i, matrixRow, envelopeIn[i]);
    }
}


function completeChaos(patternIn){
    var probability = extraArgs;

    patternOut = new Array();
    envelopeOut = new Array();

    // Randomly add notes
    for (var i = 0; i < patternIn.length; i++) {
        // random value
        if (Math.random() < probability) {
            patternOut[i] = randInt(restValue, maxPatternRange - 1);
        // else copy over same value
        } else {
            patternOut[i] = patternIn[i];
        }
    }

    // copy over envelope list
    for (var i = 0; i < envelopeIn.length; i++) {
        envelopeOut.push(i, matrixRow, envelopeIn[i]);
    }
}


function randInt(min, max) {
    // Recreates Python's random.randint function
    return Math.floor(Math.random() * (max - min + 1)) + min;
}


function weightedChoice(values, weights) {
    var totalWeight = 0;
    for (var i = 0; i < weights.length; i++) {
        totalWeight += weights[i];
    }

    var randomValue = Math.random() * totalWeight;

    for (var i = 0; i < values.length; i++) {
        randomValue -= weights[i];

        if (randomValue <= 0) {
            var outputValue = values[i];
            return outputValue;
        }
    }
}