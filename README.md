# zksigmoid
This circom file is an approximation of a sigmoid function as a ZK circuit.

## Explanation:
The original sigmoid function is given by the formula:

$$
\text{Sigmoid}(x) = \frac{1}{1+e^{-x}}
$$

However, \(e\) (Euler's number) cannot be expressed precisely in a ZK circuit, and raising it to the power of the input \(x\) is not feasible with Circom's arithmetic and non-quadratic constraints.

To approximate a sigmoid function in a ZK circuit, the function can be expressed as:

$$
\text{Approximated Sigmoid}(x) \approx \frac{1}{2} - \frac{x}{4}
$$

This expression $$\(\frac{1}{2} - \frac{x}{4}\)$$ is the Taylor Expansion of $$\(e^x\)$$ to the 2nd degree.

The Taylor Expansion approximates a function in infinite sum form and can have part of it written in a ZK circuit.

The circuit first calculates the output of $$\(\frac{1}{2} - \frac{x}{4}\)$$, then scales that result by 100 to do a comparison to check if it's greater or less than 0.5.
