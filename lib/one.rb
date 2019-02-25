# frozen_string_literal: true

class DayOne
  def initialize(number)
    @number = number
  end

  def add_one
    @number += 1
  end

  class << self
    def add_one(number)
      number + 1
    end
  end
end
