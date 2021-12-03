#!/usr/bin/ruby

DATA = File.read("input").split("\n").map(&:to_i)

result = "Nothing Here"

result = DATA.each_cons(2).select {|a, b| a < b}.count if ARGV[0].to_i == 1

result = DATA.each_cons(3).map(&:sum).each_cons(2).select {|x, y| x < y }.count if ARGV[0].to_i == 2

puts result

