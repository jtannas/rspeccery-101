# frozen_string_literal: true

require 'spec_helper' # Where the baseline requires and settings to get RSpec running are set
require 'one' # newer versions of RSpec automatically add lib to the load paths

RSpec.describe(DayOne) do
  it 'is a class' do
    expect(DayOne).to be_a(Class)
  end
end
