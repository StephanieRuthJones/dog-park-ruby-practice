class Pet

    attr_reader :name, :breed
    @@all = []

    def initialize name, breed
        @name = name
        @breed = breed
        @@all << self
    end

    def dogparks
        DogPark.all.select do |dogpark|
            dogpark.pet == self
        end
    end

    def owners
        dogparks.map do |dogpark|
            dogpark.owner.name
        end
    end

    def self.all
        @@all
    end
end