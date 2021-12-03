DATA = File.readlines("input").map {|line| line.strip.chars}

arr = DATA.transpose

gamma, epsilon = "", ""
arr.each do |sub|
     result = sub.max_by {|c| sub.count(c)}
     gamma += result
     result == "1" ? epsilon += "0" : epsilon += "1"
end

puts gamma
puts epsilon
