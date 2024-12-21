
---

# String Calculator

A simple implementation of a string calculator that supports adding numbers from a string with custom delimiters and newline handling. It raises appropriate errors for invalid inputs and handles edge cases such as negative numbers.

## Features

- **Addition of numbers**: Returns the sum of numbers in a string.
- **Custom delimiters**: Supports custom delimiters defined by the format `//[delimiter]\n[numbers]`.
- **Newline support**: Treats newlines as delimiters.
- **Error handling**:
  - Raises errors for `nil` input or invalid types.
  - Detects and reports negative numbers.

## Usage

```ruby
calculator = StringCalculator.new

# Basic addition
calculator.add('1,2,3')  # => 6

# Custom delimiter
calculator.add("//;\n1;2")  # => 3

# Newline as delimiter
calculator.add("1\n2,3")  # => 6

# Handles empty string
calculator.add('')  # => 0
```

## Error Handling

- **Nil or invalid input**: Raises `NilInputError` or `InvalidInputError`.
- **Negative numbers**: Raises `NegativeNumberError` with a message listing all negative numbers.

## Tests

Run tests using RSpec:

```bash
rspec
```

## 3 Rules of Test-Driven Development (TDD)

- Write a failing test:
  - Before writing any new functionality, write a test that describes the behavior you expect. Initially, the test will fail because the functionality hasn't been implemented yet.

- Write the minimal code to pass the test:
  - Write just enough code to make the failing test pass. Don't write extra code; only focus on satisfying the test case.

- Refactor the code:
  - Once the test passes, clean up your code. Ensure the code is well-organized, efficient, and follows best practices without changing its behavior. Re-run the tests to confirm everything still works as expected.

---
