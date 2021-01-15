require 'pry'

class Origin

    attr_reader :continent,:name, :country

    @@all = []

    def initialize(continent, country)
        @continent = continent
        @country = country
        self.class.all << self   
    end

    def self.all
        @@all
    end

    def animals
        # binding.pry
        Animal.all.select {|animal| animal.origin  == self}
    end

    def zoos
        # binding.pry
        self.animals.map{|animal| animal.zoo}
    end



    def animal_number
        # binding.pry
        self.animals.count
    end

    def self.find_by_continent(name)
        # binding.pry
        self.all.find{|origin| origin.continent == name}
    end

    def self.most_animals
        binding.pry
    end

end
