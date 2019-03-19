# frozen_string_literal: true

require 'spec_helper'
require 'one' # Referring to the lib dir

RSpec.describe(DayOne) do
  describe 'the class' do
    it 'exists' do
      expect(DayOne).to be_a(Class)
    end
  end

  # # is for instance methods
  describe '#add_one' do
    let(:described_instance) { described_class.new(0) }

    it 'returns 1 when @number is 0' do
      # Arrange
      described_instance.instance_variable_set(:@number, 0)
      # Act
                                        return_value = described_instance.add_one
      # Assert
      expect(return_value).to equal(1)
    end

    it 'increments the instance variable @number' do
      # Arrange - Set the initial value for @number
      described_instance.instance_variable_set(:@number, 0)
      # Act
      described_instance.add_one
      # Assert
      expect(described_instance.instance_variable_get(:@number)).to equal(1)
    end
  end

  # . for class methods
  describe '.add_one' do # describe is for the thing being tested
    subject { described_class.add_one(input) } # using subject reduces repition

    context 'when given 0' do # context is for the situation
      let(:input) { 0 } # let is used to to create variables

      it { is_expected.to eq(1) } # is_expected refers to the subject
    end

    context 'when given 1' do
      let(:input) { 1 }

      it { is_expected.to eq(2) }
    end
  end
end
