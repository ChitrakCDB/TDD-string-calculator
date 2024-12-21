# frozen_string_literal: true

require './custom_errors'

class StringCalculator
  def add(string)
    validate_input(string)
    handle_empty_input(string)

    delimiter, numbers = extract_delimiter(string)
    numbers = split_numbers(numbers, delimiter)
    sum_numbers(numbers)
  end

  private

  # Validates input to ensure it's a string and not nil
  def validate_input(string)
    raise NilInputError, 'Input cannot be nil' if string.nil?
    raise InvalidInputError, 'Input must be a string' unless string.is_a?(String)
  end

  # Handles the case where the string is empty (returns 0)
  def handle_empty_input(string)
    0 if string.empty?
  end

  # Extracts the delimiter and the numbers
  def extract_delimiter(string)
    if string.start_with?('//')
      extract_custom_delimiter(string)
    else
      [',', string]
    end
  end

  # Extracts the custom delimiter if specified
  def extract_custom_delimiter(string)
    # Limiting to 2 ensures the numbers part isn’t split further by additional newlines.
    delimiter_line, numbers = string.split("\n", 2)
    delimiter = delimiter_line[2..] # Remove the "//" part
    [delimiter, numbers]
  end

  # Splits the numbers using the delimiter
  def split_numbers(numbers, delimiter)
    # Replace newlines with the delimiter for consistent splitting
    numbers = numbers.gsub("\n", delimiter)
    numbers.split(delimiter).map(&:to_i)
  end

  # Sums the numbers in the array
  def sum_numbers(numbers)
    numbers.sum
  end
end
