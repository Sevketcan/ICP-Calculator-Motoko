# ICP-Calculator-Motoko
# Calculator Canister

## Overview
This is a Motoko-based smart contract (canister) implementing a simple calculator. It provides basic arithmetic operations and maintains a stateful cell to store the result of computations.

## Features
- **Addition**: Adds a value to the stored cell.
- **Subtraction**: Subtracts a value from the stored cell.
- **Multiplication**: Multiplies the stored cell by a value.
- **Division**: Divides the stored cell by a value, with a check to prevent division by zero.
- **Clear**: Resets the stored cell to zero.

## Methods

### `add(value: Int) : async Int`
Adds the given value to the stored cell.
- **Parameters**:
  - `value`: The integer to be added.
- **Returns**: The updated value of the cell.

### `subtract(value: Int) : async Int`
Subtracts the given value from the stored cell.
- **Parameters**:
  - `value`: The integer to be subtracted.
- **Returns**: The updated value of the cell.

### `multiply(value: Int) : async Int`
Multiplies the stored cell by the given value.
- **Parameters**:
  - `value`: The integer to multiply with.
- **Returns**: The updated value of the cell.

### `divide(value: Int) : async ?Int`
Divides the stored cell by the given value. Returns `null` if division by zero is attempted.
- **Parameters**:
  - `value`: The integer divisor.
- **Returns**: The updated value of the cell, or `null` if `value` is 0.

### `clear() : async ()`
Resets the stored cell to zero.
- **Parameters**: None
- **Returns**: Nothing

## Usage
1. Deploy the `Calculator` canister to the Internet Computer.
2. Use the exposed methods to perform arithmetic operations.
3. Monitor or reset the state of the cell as needed.

## Example
```motoko
// Initialize the Calculator canister
let calc = Calculator;

// Add 10 to the cell
await calc.add(10); // cell = 10

// Subtract 5
await calc.subtract(5); // cell = 5

// Multiply by 2
await calc.multiply(2); // cell = 10

// Divide by 5
await calc.divide(5); // cell = 2

// Clear the cell
await calc.clear(); // cell = 0
```

## Notes
- This implementation uses a single `Int` variable `cell` to store the state.
- Division by zero is safely handled by returning `null`.

## License
This project is open-source and available under the MIT License.

