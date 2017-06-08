#using built in
puts "Give the space separated list"
list = gets.strip.split(" ")
reverse = list.reverse
if list == reverse
	puts "Given list is palindrome"
else
	puts "Given list is not a palindrome"
end

#without built in
is_palindrome = :true
length = list.length
for i in 0..length-1
	if list[length-1-i] != list[i]	
		is_palindrome = :false
	end
end

if is_palindrome == :true
	puts "Given list is palindrome"
else
	puts "Given list is not a palindrome"
end