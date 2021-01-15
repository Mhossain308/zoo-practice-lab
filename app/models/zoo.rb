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
        Animal.all.map {|animal| animal.zoo == self}
    end
    
end