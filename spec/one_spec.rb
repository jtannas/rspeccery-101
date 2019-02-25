# frozen_string_literal: true

require 'spec_helper'
require 'one'

RSpec.describe(DayOne) do
  describe 'the class' do
    subject { DayOne }

    it { is_expected.to(be_a(Class)) }
  end
end
