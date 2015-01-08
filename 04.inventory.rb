require './04.Classes.rb'

class Inventory
	attr_accessor :car_data

	def initialize
		self.car_data = []
	end

	def add_car *car_list
		car_list.each do |car|
		new_car = Car.new
		new_car.color = car[:color]
		new_car.model = car[:model]
		new_car.back_seats = car[:back_seats]
		new_car.max_speed = car[:max_speed]
		new_car.vin_number = car[:vin_number]
		self.car_data.push(new_car)
		end
	end

	def remove_car vin_number
		self.car_data.delete_if do |car|
			car.vin_number == vin_number
		end
	end
end

zach_inventory = Inventory.new

car1 = { 
	color: "Midnight Blue",
	model: "911 Turbo",
	back_seats: 0,
	max_speed: 200,
	vin_number: 123
}

car2 = { 
	color: "Midnight Blue",
	model: "911 Turbo",
	back_seats: 0,
	max_speed: 200,
	vin_number: 456
}
car3 = { 
	color: "Midnight Blue",
	model: "911 Turbo",
	back_seats: 0,
	max_speed: 200,
	vin_number: 789
}

zach_inventory.add_car(car1, car2, car3)

p zach_inventory.car_data
zach_inventory.remove_car(789)
p zach_inventory.car_data