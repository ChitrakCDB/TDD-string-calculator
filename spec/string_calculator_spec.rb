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

    context 'single digit' do
      it 'should return the same digit as input' do
        expect(string_calculator.add('4')).to eq(4)
      end
    end

    context 'double digit' do
      it 'should return the same digit as input' do
        expect(string_calculator.add('44')).to eq(44)
      end
    end
  end
end
