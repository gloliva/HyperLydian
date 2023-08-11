/*
    Randomly "sorts" an input list.

    Similar to Python's random.suffle function.

    Author: gloliva
*/

inlets = 1;
outlets = 1;
autowatch = 1;

// Input/Output variables
var shuffledList = new Array();

// set intlet/outlet assist
setinletassist(0, "Input list to be randomly shuffled");
setoutletassist(0, "Shuffled list");


function list() {
    /*
        A list is passed through an inlet.

        A list through the first inlet calls the shuffleArray function.
    */

    var inputList = arrayfromargs(arguments);
    shuffleArray(inputList);
    output();
}


function output() {
    /*
        Outputs the value(s) from the first outlet
    */
    outlet(0, shuffledList);
}


function shuffleArray(inputList) {
    /*
        Randomly shuffles an array.
    */
    shuffledList = new Array();
    var tempList = inputList.sort(function() {
        return Math.random() - 0.5;
    });

    for (var i = 0; i < tempList.length; i++) {
        shuffledList[i] = tempList[i];
    }
}