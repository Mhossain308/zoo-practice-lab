class Animal
# identify relationship types
# zoo ---< animal  zoo>-----<origin origin---<animals

# Define animal class 

# set attr methods 
    # can't change species, name, origin
    attr_reader :species, :name, :origin
    # zoo can be changed
    attr_accessor :zoo

    # Declare Class variables
    @@all = []
    
    # Define Initialize methods species, origin, name, and zoo 
    # - declare species, name, origin, zoo,  and push into all
    def initialize(species, name, origin, zoo)
        @species = species
        @name = name
        @origin = origin
        self.zoo = zoo
        self.class.all << self
    end

    #  define self.all which reads @@all empty array
    def self.all
        @@all
    end
    
    # This class defines and creates a new animal with a name, origin, species, and zoo.

end