/*
    Modify sequence value list

    Author: gloliva
*/

inlets = 3;
outlets = 2;
autowatch = 1;

// Globals
var sustainList = new Array();
var valueOut = new Array();
var sustainOut = new Array();
var updateIdx = 0;
var matrixRow = 0;

// Sustain
var asr = 0;
var attack = 1;
var sustain = 2;
var release = 3;

// set inlet/outlet assist
setinletassist(0, "Sequence Value List");
setinletassist(1, "Sequence Sustain List");
setinletassist(2, "Index to Update");

setoutletassist(0, "New Value Sequence");
setoutletassist(1, "New Sustain Sequence");


function msg_int(i)
{
    if (inlet == 2) {
        updateIdx = i;
    }
}


function list()
{
    if (inlet == 0) {
        var valueList = arrayfromargs(arguments);
        addRest(valueList);
        bang();
    } else if (inlet == 1) {
        for (var i = 0; i < arguments.length; i++) {
            sustainList[i] = arguments[i];
        }
    }
}


function bang()
{
    outlet(1, sustainOut);
    outlet(0, valueOut);
}


function addRest(valueList)
{
    var sustainVal;
    for (var i = 0; i < valueList.length; i++) {
        valueOut[i] = valueList[i];
    }
    valueOut[updateIdx] = -1;  // make value a rest
    sustainList[updateIdx] = asr;

    var left = updateIdx - 1;
    var right = updateIdx + 1;

    if (left >= 0) {
        sustainVal = sustainList[left]
        if (sustainVal == sustain) {
            sustainList[left] = release;
        } else if (sustainVal == attack) {
            sustainList[left] = asr;
        }
    }

    if (right < sustainList.length) {
        sustainVal = sustainList[right]
        if (sustainVal == sustain) {
            sustainList[right] = attack;
        } else if (sustainVal == release) {
            sustainList[right] = asr;
        }
    }

    for (var i = 0; i < sustainList.length; i++) {
        sustainOut.push(i, matrixRow, sustainList[i])
    }
}