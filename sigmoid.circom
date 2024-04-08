pragma circom 2.1.6;

include "node_modules/circomlib/circuits/comparators.circom";

template Sigmoid() {
    signal input x;
    signal output y;

    // sigmoid output
    signal intermediate;

    // Calculating the expression: 1/2 - x/4
    intermediate <== (2 - x) / 4;
    //Scale intermediate by *100 to check if its greater than 0.5
    component lessThan = LessThan(100);
    lessThan.in[0] <== intermediate*100;
    lessThan.in[1] <== 50;
    y <== lessThan.out;

}

component main = Sigmoid();
