#!/usr/bin/env ruby

def read_input(input_txt)
  h = Hash[
    input_txt.each_line.map { |l|
        l.chomp.split(': ', 2)
    }
  ]

  # Creates an array on each hash element
  h.update(h) { |k, v| v = Array.new(v.to_i, 0)}
  # Converts the hash keys to integers
  Hash[h.keys.map(&:to_i).zip(h.values)]
end

def calculate_severity(firewall)
    severity = 0

    person = -1

    firewall.keys { |k|
    while person <= firewall.keys.last
      
    end

    severity
end

input = File.open('input.txt', 'r')
ex_1 = File.open('ex_1.txt', 'r')
