# zksigmoid
This circom file is an approximation of a sigmoid function as a ZK circuit. 

Explanation:
The original sigmoid function is 1/1+e^-x. 

However, e cannot be expressed precisely in a ZK circuit, and raising it to the power of its input is not possible with circom's arithmetic constraints. 

To approximate a ZK circuit, the sigmoid function can be expressed as 1/2 - x/4 + x^3/48.

 1/2 - x/4 + x^3/48 is the Taylor Expansion of e^x to the 3rd degree. 

The Taylor Expansion approximates a function in infinite sum form and can have part of it written in a ZK circuit. 


