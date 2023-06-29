/*
    Invert or reverse a pattern value list

    Author: gloliva
*/

inlets = 3;
outlets = 2;
autowatch = 1;

// Globals
var sustainList = new Array();
var valueOut = new Array();
var sustainOut = new Array();
var updateMode = 0;
var matrixRow = 0;
var restValue = -1;


// set inlet/outlet assist
setinletassist(0, "Sequence Value List");
setinletassist(1, "Sequence Sustain List");
setinletassist(2, "Sequence Update Mode");

setoutletassist(0, "New Value Sequence");
setoutletassist(1, "New Sustain Sequence");


function msg_int(i) {
    if (inlet == 2) {
        updateMode = i;
    }
}


function list() {
    // Perform sequence modification
    if (inlet == 0) {
        if (sustainList.length <= 0) {
            throw new Error("Sustain List has not been set");
        }

        var valueList = arrayfromargs(arguments);
        if (updateMode == 0) {
            noteReverse(valueList);
        } else if (updateMode == 1) {
            trueReverse(valueList);
        }
        output();
    // Copy Sustain list
    } else if (inlet == 1) {
        sustainList = new Array();
        for (var i = 0; i < arguments.length; i++) {
            sustainList[i] = arguments[i];
        }
    }
}


function output()
{
    if (sustainOut.length > 0) {
        outlet(1, sustainOut);
    }
    outlet(0, valueOut);
}


function noteReverse(valueList) {
    sustainOut = new Array();
    valueOut = new Array(valueList.length);
    var enabledNotes = new Array();
    var enabledIndexes = new Array();

    // fill with rests
    for (var i = 0; i < valueOut.length; i++) {
        valueOut[i] = restValue;
    }

    for (var i = 0; i < valueList.length; i++) {
        var note = valueList[i];
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

        valueOut[idx] = note;
    }
}


function trueReverse(valueList) {
    valueOut = new Array(valueList.length);

    // copy over list in reverse
    for (var i = valueList.length - 1; i >= 0; i--) {
        valueOut[i] = valueList[valueList.length - i - 1];
    }
}

