# frozen_string_literal: true

require 'debug'

def hello
  puts 'Hello World'
end
hello

binding.b
def greeting(name)
  puts "おはよう、#{name}!"
end

greeting('渡辺')
