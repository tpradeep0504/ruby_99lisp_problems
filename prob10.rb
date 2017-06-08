puts "Give the space separated list"
list = gets.strip.split(" ")

#using built in
final_list = list.chunk { |element| element }.map do |key,value| 
	[value.length, key]
end
p final_list

# without using built in
final = []
count = 1
last_element = ''
list.each do |element|
	if last_element != ''	
		if last_element == element
			count += 1
		else
			final << [count,last_element]
			count = 1
		end
	end
	last_element = element
end
final << [count,last_element]
p final