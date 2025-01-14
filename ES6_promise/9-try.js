export default function guardrail(mathFunction) {
  const queue = [];

  try {
    // Try to execute the mathFunction and push its result to the queue
    const result = mathFunction();
    queue.push(result);
  } catch (error) {
    // If an error is thrown, push the full error message to the queue
    queue.push(`Error: ${error.message}`);
  }

  // Always push this message at the end of the queue
  queue.push('Guardrail was processed');

  return queue;
}
