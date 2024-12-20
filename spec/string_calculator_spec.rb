# frozen_string_literal: true

require_relative '../string_calculator'
describe StringCalculator do
  context '#add' do
    let(:string_calculator) { StringCalculator.new }

    context 'raise error' do
      it 'should raise nil input error if the input is nil' do
        expect { string_calculator.add(nil) }.to raise_error(NilInputError, 'Input cannot be nil')
      end
    end

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

    context 'input has two numbers' do
      it 'should return the sum of the two numbers' do
        expect(string_calculator.add('4,6')).to eq(10)
      end
    end

    context 'input can have n numbers' do
      it 'should return the sum of n numbers' do
        expect(string_calculator.add('40,60,100')).to eq(200)
      end
    end
  end
end
