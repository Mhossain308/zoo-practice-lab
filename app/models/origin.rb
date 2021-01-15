class Origin

    attr_reader :continent,:name

    @@all = []

    def initialize(continent, country)
        @continent = continent
        @country = country
        self.class.all << self   
    end

    def self.all
        @@all
    end

end
