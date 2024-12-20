# frozen_string_literal: true

require './custom_errors'
class StringCalculator
  def add(string)
    raise NilInputError, 'Input cannot be nil' if string.nil?
    return 0 if string.empty?

    numbers = string.split(',').map(&:to_i)
    numbers.sum
  end
end
