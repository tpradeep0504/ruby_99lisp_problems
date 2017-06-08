#function to scan user input into nested array
def get_nested_array string
  res = []
  string.scan(/((\w+)|(\[(.+)\]))/) do |match|
    if match[1]
      res << match[1].to_s
    elsif match[3]
      res << get_nested_array(match[3])
    end
  end
  res
end

puts "Give the nested list of the form \"[a,b,[c,d,[e,f]],g]\""
string = gets.strip
nest = get_nested_array(string).first

puts "Given nested array is: "
p nest

#using built in
puts "Using built in, the flattened array is:"
p nest.flatten

#without using built in
def flatten_array(array)
  flat = []
  array.each do |element|
    if element.kind_of?(Array)
      flat += flatten_array(element)
    else
      flat << element
    end
  end
  flat
end

puts "Without using built in, the flattened array is:"
p flatten_array(nest)
