# frozen_string_literal: true

require_relative '../string_calculator'
describe StringCalculator do
  context '#add' do
    let(:string_calculator) { StringCalculator.new }

    context 'empty string' do
      it 'should include 0 in output' do
        expect(string_calculator.add('')).to eq(0)
      end
    end
  end
end
