
require_relative './owner'
require_relative './pet'
require_relative './dog_park'
require 'pry'


damon = Owner.new('Damon')
andrew = Owner.new('Andrew')
gage = Owner.new('Gage')

spot = Pet.new('spot', 'poodle')
ted = Pet.new('ted', 'spaniel')

dogpark1 = DogPark.new(spot, damon)#want poodle back
dogpark2 = DogPark.new(spot, andrew)
dogpark3 = DogPark.new(spot, gage)
binding.pry