#using built in
puts "Give the space separated list"
list = gets.split(" ")
puts "Last element of the list is #{list.last}"

#without built in
i = 0
while list[i] do
	last = list[i]
	i += 1
end

puts "Last element of the list is #{last}"

