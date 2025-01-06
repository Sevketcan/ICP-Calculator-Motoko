// Calculator
// Variables (let -> immutable, var -> mutable)
// Operators
// Async method
// If condition

// Canister => Smart Contract

actor Calculator {

  var cell: Int = 0;

  // Addition
  public func add(value: Int) : async Int {
    cell += value;
    cell
  };

  // Subtraction
  public func subtract(value: Int) : async Int {
    cell -= value;
    cell
  };

  // Multiplication
  public func multiply(value: Int) : async Int {
    cell *= value;
    cell
  };

  // Division
  public func divide(value: Int) : async ?Int {
    if (value == 0) {
      null
    } else {
      cell /= value;
      ?cell
    };
  };

  // Clear
  public func clear() : async () {
    cell := 0;
  };

};
