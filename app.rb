#!/usr/bin/env ruby
require_relative './lib/extensions/integer'
Integer.include Extensions::Integer

puts 'Enter the starting sequence number:'
start = gets.chomp.to_i

puts 'Enter the number of elements in the sequence (> 0)'
number = gets.chomp.to_i
if number <= 0
  puts 'Wrong number (it must be > 0)!'
  return
end

puts 'Output sequence is:'
puts start.look_and_say.each.take number
