#!/bin/ruby

DATA = File.readlines('input').map{|x| a,b = x.split; [a, b.to_i] }

forward, depth, aim = 0, 0, 0

DATA.each do |command, value|

  aim = aim - value if command == "up"
  aim = aim + value if command == "down"
  if command == "forward"
    forward = forward + value
    depth = depth + (value * aim)
  end

end

puts forward * depth
