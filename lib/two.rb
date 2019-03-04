# frozen_string_literal: true

def add_one(number)
  number + 1
end

def sum_two(a, b)
  a + b
end

def sum_args(*args)
  args.inject(0, :+)
end

def make_pyramid(height)
  buffer = ''
  (1..height).each do |level|
    buffer += '#' * level + "\n"
  end
  buffer
end

def puts_pyramid(height, putter: $stdout.method(:puts))
  buffer = ''
  (1..height).each do |level|
    buffer += '#' * level + "\n"
  end
  putter.call(buffer)
  true
end
