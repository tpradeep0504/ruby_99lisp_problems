#using built in
puts "Give the space separated list"
list = gets.split(" ")
length = list.length
puts "Last but one element of the list is " + (list[length-2]).to_s

#without built in
i = 0
while list[i] do
	last = list[i]
	i += 1
end

length = i
puts "Last but one element of the list is " + (list[length-2]).to_s

