class DogPark
    attr_reader :pet, :owner

    @@all = []

    def initialize pet, owner
        @pet = pet
        @owner = owner
        @@all << self
    end

    def self.all 
        @@all #shows array @@all
    end

end