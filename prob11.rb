puts "Give the space separated list"
list = gets.strip.split(" ")

#using built in
final_list = list.chunk { |element| element }.map do |key,value|
  if value.length == 1
    key
  else  
    [value.length, key]
  end
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
      if count == 1
	final << last_element
      else
	final << [count,last_element]
      end
      count = 1
    end
  end
  last_element = element
end
if count == 1
  final << last_element
else
  final << [count,last_element]
end
p final
