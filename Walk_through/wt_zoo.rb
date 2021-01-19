# identify relationship types
# zoo ---< animal  zoo>-----<origin origin---<animal

#define class


    #create attr_macros
class Zoo
    # lare class variables
     attr_accessor :name
     attr_reader :address
     @@all = []

    #define initialize method -- takes name and address parameters
    def initialize(name, address)
        #declare name and address and push self into all
        @name = name
        @address = address
        self.class.all << self
    end




    #define self.all which reads @@all

    def self.all
        @@all
    end

    # def #all_animals looks at every animal instance and selects the animal if the zoo instance matches the zoo you're calling the method on

    def all_animals
        Animal.all.select {|animal| animal.zoo == self}
    end


    #define #all_animal_species looks at all_animals for one instances and returns an array for the species 

    def all_animal_species
        all_animals.map(&:species)
    end

    # define self.find_by_name which takes a name string and returns the zoo instance with that name by looking at all the zoo instances
    def self.find_by_name(name)
        self.all.find{|zoo| zoo.name == name}
    end
    
    #define #origins which returns an array of all the unique origins that exist in a zoo by. use all_animals as a helper method.
    def origins
        all_animals.map{|animal| animal.origin}.uniq
        # all_animals.map(&:origin).uniq
    end
end

#remember to end!