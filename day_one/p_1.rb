#!/usr/bin/env/ruby

require 'pry'

def match_sum(input_string)
  sum = 0 

  binding.pry
  input_string.length.times do |i|
    n = (i + 1)  % input_string.length
    if input_string[i].to_i == input_string[n].to_i
      sum += sum
    end
  end

  binding.pry
  sum
end

input = File.open("input.txt", "r").read.strip
sum = 0

ex_1 = "1122"
ex_2 = "1111"
ex_3 = "1234"
ex_4 = "91212129"

puts match_sum(ex_1)
#puts match_sum(ex_2)
#puts match_sum(ex_3)
#puts match_sum(ex_4)
#puts match_sum(input)
