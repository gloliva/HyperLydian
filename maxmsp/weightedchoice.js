/*
    Select an element in a list based on a set of weights.

    Similar to Python's random.choices function.

    Author: gloliva
*/

inlets = 2;
outlets = 1;
autowatch = 1;

// Globals
var weights = new Array();
var outputValue;

// set intlet/outlet assist
setinletassist(0, "List of input values");
setinletassist(1, "List of corresponding weights");
setoutletassist(0, "Selected value");


function list() {
    if (inlet == 0) {
        var valueList = arrayfromargs(arguments);

        if (valueList.length != weights.length) {
            throw new Error("Input values and weights are not the same length");
        }

        weightedChoice(valueList, weights);
        output();
    } else {
        weights = new Array();
        for (var i = 0; i < arguments.length; i++) {
            weights[i] = arguments[i];
        }
    }
}


function output() {
    outlet(0, outputValue);
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
            outputValue = values[i];
            return;
        }
    }
}
