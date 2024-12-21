# frozen_string_literal: true

require './custom_errors'

class StringCalculator
  def add(string)
    raise NilInputError, 'Input cannot be nil' if string.nil?
    raise InvalidInputError, 'Input must be a string' unless string.is_a?(String)
    return 0 if string.empty?

    numbers = extract_numbers(string)
    numbers.sum
  end

  def extract_numbers(string)
    string.split(/[\n,]+/).map(&:to_i)
  end
end
