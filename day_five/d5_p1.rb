#!/usr/bin/env ruby

require 'pry'

def jump_offset(input)
    instructions = []
    index = 0
    steps = 0

    input.each_line do |line|
      instructions << line
    end

    instructions.map!(&:to_i)

    #binding.pry
    while (index >= 0) && (index < instructions.length)
      #binding.pry
      p = index
      index += instructions[index]
      if instructions[p] >= 3
        instructions[p] -= 1
      else
        instructions[p] += 1
      end
      steps += 1
      #puts "index: #{index}"
      #puts instructions
      #puts "steps: #{steps}"
      #puts "========================="
      #binding.pry
    end

    steps
end

input = File.open('input.txt', 'r')
ex_1 = "0\n3\n0\n1\n-3"

puts jump_offset(ex_1)
puts jump_offset(input)
