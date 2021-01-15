class Animal

    attr_reader :species, :name, :origin 
    attr_accessor :zoo
    
    @@all = []

    def initialize(species, name, origin, zoo)
        @species = species
        @name = name
        @origin = origin
        self.zoo = zoo
        self.class.all << self
    end 

    def self.all
        @@all
    end



    


end
