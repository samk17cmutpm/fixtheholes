require 'faker'

@max = 100
@minimum = 0

for index in @minimum..@max 
	Owner.create(
		:name => Faker::Name.name,
		:phone_number => Faker::PhoneNumber.cell_phone,
		:age => Faker::Number.between(10, 100)
	)
end 

@owners = Owner.all

for index in @minimum..@max 
	Area.create(:name => Faker::Address.city)
end 

@areas = Area.all 

for index in @minimum..@max 
	Location.create(
		:long => Faker::Address.longitude, 
		:lat => Faker::Address.latitude, 
		:address => Faker::Address.street_address,
		:area_id => @areas[index].id
	)
end 

@locations = Location.all 

for index in @minimum..@max 
	Garage.create(
		:name => Faker::Team.name, 
		:location_id => @locations[index].id,
		:owner_id => @areas[index].id
	)
end 

