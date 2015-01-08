# to start a new class use a keyword of class
class	Car
	#setters
	attr_writer :make

	#getters
	attr_reader :make

	# manual way to set setters and getters
	# @year

	#setter
	def year= value
		@year = value
		@year			# what it this for?

	end

	# getter
	def year
		@year
	end

	# write both setter and getter methods at once
	attr_accessor :color
	attr_accessor :model
	attr_accessor :back_seats
	attr_accessor :max_speed

	def initialize
		# You never want to access the instance variable dierctly (@make) - Use self.make instead
		self.make = "Ford"
		self.model = "Focus"
		self.color = "White"
		self.back_seats = 3
		self.max_speed = 140
		Car.list_all_cars.push(self)
	end

	def display_information
		puts "#{self.make} #{self.model}"
	end

	#class methods
	def self.display_all_cars
		
	end
	def self.list_all_cars
		@@list_of_cars
	end


end


some_car = Car.new
some_car.make = "Lotus"


# p some_car
# p some_car.make
some_car.display_information

# @something=something is an instance variable - the @ indicates an instance variable
# @@something=something is a class variable - the @@ indicates an instance variable
class RandomCar
	
end

# a = "hello"
# is the same as
# a = string.new("Hello")


# p stands for puts.inspect


