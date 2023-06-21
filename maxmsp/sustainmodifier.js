/*
    Modify sustain list

    Author: gloliva
*/

inlets = 3;
autowatch = 1;
var outputList = new Array();
var inputValues = new Array();
var probability = 0.;
var matrixRow = 0;

function msg_float(f)
{
    if (inlet == 2) {
        probability = f;
    }
}

function list()
{
    if (inlet == 0) {
        var test = arrayfromargs(arguments)
        decreaseSustain();
        bang();
    } else if (inlet == 1) {
        for (var i = 0; i < arguments.length; i++) {
            inputValues[i] = arguments[i];
        }
    }
}

function bang()
{
    outlet(0, outputList);
}

function decreaseSustain() {
    outputList = new Array();
    var valueUpdated = false;
    for (var i = 0; i < arguments.length; i++) {
        var idxProb = Math.random();
        var idxValue;
        if (arguments[i] > 0 && idxProb < probability) {
            valueUpdated = true;
            idxValue = 0.0;
        } else {
            if (valueUpdated) {
                valueUpdated = false;
                idxValue = 1.0;
            }
            else {
                idxValue = arguments[i];
            }
        }
        outputList.push(i, matrixRow, idxValue)
    }
}
