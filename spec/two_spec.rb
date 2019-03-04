# frozen_string_literal: true

require 'spec_helper'
require 'two'

RSpec.describe('add_one') do
  subject { add_one(input) }

  context 'when given 1' do
    let(:input) { 1 }

    it { is_expected.to(eq(2)) }
  end

  context 'when given -1' do
    let(:input) { -1 }

    it { is_expected.to(eq(0)) }
  end

  context 'when given 1.5' do
    let(:input) { 1.5 }

    it { is_expected.to(eq(2.5)) }
  end

  context 'raises an error when given a string' do
    let(:input) { 'a' }

    specify { expect { subject }.to raise_error(TypeError) }
  end
end

RSpec.describe('make_pyramid') do
  subject { make_pyramid(input) }

  context 'when given 0' do
    let(:input) { 0 }

    it { is_expected.to(eq(<<~HEREDOC
    HEREDOC
    )) }
  end

  context 'when given 3' do
    let(:input) { 3 }

    it { is_expected.to(eq(<<~HEREDOC
      #
      ##
      ###
    HEREDOC
    )) }
  end

  context 'when given 0' do
    let(:input) { 7 }

    it { is_expected.to(eq(<<~HEREDOC
      #
      ##
      ###
      ####
      #####
      ######
      #######
    HEREDOC
    )) }
  end

  context 'when given -5' do
    let(:input) { -5 }

    it { is_expected.to(eq(<<~HEREDOC
    HEREDOC
    )) }
  end

  context 'when given a' do
    let(:input) { 'a' }

    specify { expect { subject }.to(raise_error(ArgumentError)) }
  end
end
