/*
    Modify sustain list

    Author: gloliva
*/

inlets = 2;
var outputList = new Array();
var probability = 0.;

function msg_float(f)
{
    if (inlet == 1) {
        probability = f;
    }
}

function list()
{
    if (inlet == 0) {
        var valueUpdated = false;
        for (var i = 0; i < arguments.length; i++) {
            var idxProb = Math.random();
            if (arguments[i] > 0 && idxProb < probability) {
                valueUpdated = true;
                outputList[i] = 0.0;
            } else {
                if (valueUpdated) {
                    valueUpdated = false;
                    outputList[i] = 1.0;
                }
                else {
                    outputList[i] = arguments[i];
                }
            }
        }
        bang();
    }
}

function bang()
{
    outlet(0, outputList);
}
