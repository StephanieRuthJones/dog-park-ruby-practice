
require_relative './owner'
require_relative './pet'
require_relative './dog_park'
require 'pry'


damon = Owner.new('Damon', 25)
andrew = Owner.new('Andrew', 20)
gage = Owner.new('Gage', 22)
arena = Owner.new('Arena', 19)

spot = Pet.new('spot', 'poodle')
ted = Pet.new('ted', 'spaniel')

dogpark1 = DogPark.new(spot, damon)#want poodle back
dogpark2 = DogPark.new(spot, andrew)
dogpark3 = DogPark.new(spot, gage)
binding.pry