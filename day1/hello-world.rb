x = 5
name = "Ryan Huber"
firstName = name.chomp(" Huber")
lastName = name.byteslice(5..9)
firstName = firstName.downcase
lastName = lastName.upcase
capitalizedFirstName = firstName.capitalize
capitalizedlastName = lastName.capitalize
fullName = capitalizedFirstName + " " + capitalizedlastName


print x
print ' '
puts x.class
print name
print "\n"
print firstName
print "\n"
puts capitalizedFirstName
puts lastName
puts capitalizedlastName
puts fullName

# gets.chomp gets rid of the return at the end of an input
# .to_i converts to an integer
# irb in terminal puts you into a ruby development environment in console
# must have a decimal or float to make sure that result will be integer and not include the decimals
# always use decimals for good math!

# take every single variable type and use methods on them


# Day 2

# arrays
# [] - brackets
# {} - curly braces
array1 = [1,2,3, "jesse", 4, "string"]
# .inspect - shows the data as the data type.
puts array1.inspect
puts array1[0].inspect
puts array[4].inspect
puts array[3].inspect
# .push - adds another element to an array
array.push("Ryan")

students = [
				["jesse", "adam", "jackie", "troy", "matt", "ryan"],
				["robbi", "stephanie", "william"]
			]
puts students[0][1].inspect

students[1].push("jon")

# .pop -  removes the last element from an array

# use do / end rather than curly braces
students.each do |name|
	puts "#{name} is the name"
end

# scope - where the variable exists.  
# name falls out of scope after end
# interpolation - puts the value of a variable in a string 

students.each_with_index do |name|
	puts "#{name} is the name"
end


# hash - similar to objects?

nick_info = {
	name: "nick",
	twitter: "@n_bucciarelli",
	github: "nbucciarelli",
	phone: "704-614-0456"
}

puts nick_info[:name]
puts nick_info[:github]