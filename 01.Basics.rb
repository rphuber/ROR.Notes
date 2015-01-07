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
