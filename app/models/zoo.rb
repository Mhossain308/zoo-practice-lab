class Zoo

    attr_reader :address
    attr_accessor :name

    @@all = []
    

    def initialize(name, address)
        self.name = name
        @address = address
        self.class.all << self
    end


    def self.all
        @@all
    end

    def all_animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    def all_animal_species
        all_animals.map(&:species)
    end

    def self.find_by_name(name)
        self.all.find {|zoo| zoo.name == name}
    end

    def origins
        all_animals.map {|animal| animal.origin}.uniq
    end

end