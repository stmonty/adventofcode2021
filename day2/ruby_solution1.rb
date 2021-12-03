#!/bin/ruby
hash = {}
File.open("input") do |fp|
  fp.each do |line|
    key, value = line.chomp.split(" ")
    hash.key?(key) ? hash[key] = value.to_i + hash[key].to_i : hash[key] = value.to_i
    #puts "#{key} #{hash[key]}"
  end
end

puts hash["forward"] * (hash["down"] - hash["up"])

