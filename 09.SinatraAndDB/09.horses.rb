require 'sinatra'
require 'data_mapper'

DataMapper.setup(
	:default, 
	'mysql://root@localhost/horse_farm'
)

class Horse
	include DataMapper::Resource
	# attr_accessor :breed
	# attr_accessor :age
	property :id, Serial
	property :breed, String
	property :age, String
	property :color, String
	property :weight, String
end

# RESTful
#########
# GET - recieves the information from the server
# POST - creates and sends information to the server
# PUT/PATCH - changes and updates the information on the server
#DELETE - deletes the information from the server


get '/' do
	@horses = Hores.all
	erb :index
end

get '/new' do
	erb :create_horse_form
end

post '/create_horse' do
	# hash sent over from sinatra will be called params
	puts params

end