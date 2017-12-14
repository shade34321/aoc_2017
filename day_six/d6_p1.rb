#!/usr/bin/env ruby

require 'pry'

def balance_memory(input)
  input = input.gsub(/\s+/m, ' ').strip.split(' ').map!(&:to_i)
  sequences = []
  sequences << "#{input.join('')}"
  steps = 0

  #puts sequences
  #binding.pry
  while sequences.uniq.length == sequences.length
    steps += 1
    index = input.index(input.max)
    m = input.max
    input[index] = 0
    index += 1
    #binding.pry
    m.downto(1) do
      #binding.pry
      input[index % input.length] += 1
      index += 1
    end
    #binding.pry
    sequences << "#{input.join('')}"
    #puts sequences
  end
  
  puts steps - sequences.index("#{input.join('')}") 
  steps
end
input = File.open('input.txt', 'r').read
ex_1 = '0 2 7 0'

puts balance_memory(ex_1)
puts balance_memory(input)
