# frozen_string_literal: true

class Three
  def self.russian_roulette
    if rand(1..6) != 6
      puts 'Click'
    else
      puts 'Killing the kitten'
      kill_the_kitten
    end
  end

  def self.kill_the_kitten
    %x`rm ./lib/kitten.jpg`
  end
end
