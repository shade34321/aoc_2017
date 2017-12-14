#!/usr/bin/env ruby

require 'pry'

def anagram(input_string)
    input_string.map!(&:chars)
    input_string.map!(&:sort)
    input_string.map!(&:join)
    input_string.uniq.length == input_string.length ? true : false
end

def validate(input_string)
  valid = true
  num_valid = 0
  #binding.pry
  input_string.each_line do |line|
    #binding.pry
    values = line.gsub(/\s+/m, ' ').strip.split(' ')
    if values.uniq.length == values.length
      if anagram(values)
        #binding.pry
        num_valid += 1
      end
      valid = true
    end
  end

  num_valid
end

input = File.open('d4_input.txt', 'r')
ex_1 = 'aa bb cc dd ee'
ex_2 = 'aa bb cc dd aa'
ex_3 = 'aa bb cc dd aaa'

puts validate(ex_1)
puts validate(ex_2)
puts validate(ex_3)
puts validate(input)
