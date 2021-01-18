# define Origin class

    #set attr methods continent,country 


    #declare class variables


    #define initialize method with parameters continent and country

        #dclare continent and country and push self into all


    #define self.all which reads @@all 


    #define #animals which looks at every animal instance and selects the animal if the origin  matches the origin instance you're calling the method on

    #define #zoos which uses #animals to return an array of all the zoos that have animals from this origin


    #define #animal_number which uses #animals and counts how many animal instances there are for this origin


    #define self.continent which takes in a continent string and looks at all of the origins and selects instances with that continent


    #define self.find_by_continent which takes a string name and passes it to self.continent, then returns an array of all the countries in that continent


    #define self.most_animals this method should itterate through each origin instances. for each origin instance it passes the instance through animal_number. and uses a local variable to keep track of the origin with the most animals. return the origin with the most animals.

#remember to end