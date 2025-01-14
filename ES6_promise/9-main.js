import guardrail from './9-try';
import divideFunction from './8-try';

// Testing with valid input
console.log(guardrail(() => { return divideFunction(10, 2) }));

// Testing with division by zero
console.log(guardrail(() => { return divideFunction(10, 0) }));