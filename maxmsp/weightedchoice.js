/*
    Select an element in a list based on a set of weights.

    Similar to Python's random.choices function.

    Author: gloliva
*/

inlets = 3;
outlets = 1;
autowatch = 1;

// Input/Output variables
var weights = new Array();
var numChoices = 1;
var outputValue = new Array();

// set intlet/outlet assist
setinletassist(0, "List of input values");
setinletassist(1, "List of corresponding weights");
setinletassist(2, "Number of choices to return");
setoutletassist(0, "Selected value(s)");


function msg_int(i) {
    /*
        An integer is passed through an inlet.
        Used to assign the the number of choices to return.
    */
    if (inlet == 2) {
        numChoices = i;
    }
}


function list() {
    /*
        A list is passed through an inlet.
        Used to assign the value sequence and weight sequence.

        A list through the first inlet calls the weightedChoice function.
    */
    if (inlet == 0) {
        var valueList = arrayfromargs(arguments);

        if (valueList.length != weights.length) {
            throw new Error("Input values and weights are not the same length");
        }

        outputValue = new Array();
        for (var i = 0; i < numChoices; i++) {
            weightedChoice(valueList, weights);
        }
        output();
    } else {
        weights = new Array();
        for (var i = 0; i < arguments.length; i++) {
            weights[i] = arguments[i];
        }
    }
}


function output() {
    /*
        Outputs the value(s) from the first outlet
    */
    outlet(0, outputValue);
}


function weightedChoice(values, weights) {
    /*
        Recreates Python's random.choices function for selecting a value from a list
        based on weights.
    */
    var totalWeight = 0;
    for (var i = 0; i < weights.length; i++) {
        totalWeight += weights[i];
    }

    var randomValue = Math.random() * totalWeight;

    for (var i = 0; i < values.length; i++) {
        randomValue -= weights[i];

        if (randomValue <= 0) {
            outputValue.push(values[i]);
            return;
        }
    }
}
