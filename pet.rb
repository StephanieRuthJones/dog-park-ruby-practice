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
       dogparks.map(&:owner)
    end

    def owner_names
        owners.map(&:name)
    end

    def owner_ages
        owners.map(&:age)
    end

    def longest_owner_name
        owner_names.max_by(&:length)
    end

    def average_owner_age
        (owner_ages.reduce(&:+).to_f / owners.length).round 
        # or (owner_ages.sum.to_f / owners.length).round
    end

    def self.all
        @@all
    end
end