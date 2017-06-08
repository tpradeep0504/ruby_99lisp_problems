puts "Give the space separated list"
list = gets.split(" ")
puts "Which element do you want to fetch"
k = gets.to_i
puts "#{k} th element is " + (list[k-1]).to_s 