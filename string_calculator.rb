# frozen_string_literal: true

require './custom_errors'
class StringCalculator
  def add(string)
    raise NilInputError, 'Input cannot be nil' if string.nil?
    return 0 if string.empty?

    string.to_i
  end
end
