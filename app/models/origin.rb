

class Origin

    attr_reader :continent, :country

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
        Animal.all.select {|animal| animal.origin  == self}
    end

    def zoos
        animals.map(&:zoo).uniq
    end



    def animal_number
        # binding.pry
        animals.length
    end

    def self.continent(name)
        all.select{|origin| origin.continent == name}
    end

    def self.find_by_continent(name)
        continent(name).map(&:country)
    end

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


