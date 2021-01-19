# identify relationship types
# zoo ---< animal  zoo>-----<origin origin---<animal

# define Origin class
class Origin
    #set attr methods continent,country 
    attr_reader :continent, :country
    @@all = []
    #declare class variables


    #define initialize method with parameters continent and country
    def initialize(continent, country)
        @continent = continent
        @country = country
        self.class.all << self
    end

        #degclare continent and country and push self into all


    #define self.all which reads @@all 
    def self.all
        @@all
    end

    #define #animals which looks at every animal instance and selects the animal if the origin  matches the origin instance you're calling the method on
    def animals
        Animal.all.select {|animal| animal.origin == self}
    end
    #define #zoos which uses #animals to return an array of all the zoos that have animals from this origin
    def zoos
        animals.map(&:zoo).uniq
    end

    #define #animal_number which uses #animals and counts how many animal instances there are for this origin
    def animal_number
        animals.length
    end


    #define self.continent which takes in a continent string and looks at all of the origins and selects instances with that continent
    def self.continent(name)
        all.select {|origin| origin.continent == name}
    end

    #define self.find_by_continent which takes a string name and passes it to self.continent, then returns an array of all the countries in that continent

    def self.find_by_continent(name)
        continent(name).map(&:country)
    end

    #define self.most_animals this method should itterate through each origin instances. for each origin instance it passes the instance through animal_number. and uses a local variable to keep track of the origin with the most animals. return the origin with the most animals.

    def self.most_animals
        most_origin = all[0]
        all.each do |origin|
            if origin.animal_number > most_origin.animal_number
                most_origin = origin
            end
        end
        most_origin
    end

end
#remember to end