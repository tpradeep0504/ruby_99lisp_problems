puts "Give the space separated list"
list = gets.strip.split(" ")

#using built in
p list.chunk{|element| element}.map(&:first)

#without using built in
final = []
list.each do |element|
	if final[final.length-1] != element
		final << element
	end
end
p final