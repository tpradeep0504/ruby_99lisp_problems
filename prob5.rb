#using built in
puts "Give the space separated list"
list = gets.strip.split(" ")
reverse = list.reverse.to_s
puts "Reverse list is #{reverse}"

#without built in
length = list.length
reverse1 = []
for i in 0..length-1
	reverse1[length-1-i] = list[i]	
end

puts "Reverse list is" + reverse1.to_s