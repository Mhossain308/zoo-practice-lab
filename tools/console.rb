require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# think how many instances of what you need -- how to test your code in a best manner
zoo1 = Zoo.new('central park', '111 okay st')
zoo2 = Zoo.new('Bronx Zoo', '222 thank you st')
origin1 = Origin.new('Africa', 'Egypt')
origin2 = Origin.new('Asia', "Uzbekistan")
origin3 = Origin.new('Asia', 'Mongolia')
animal1 = Animal.new('lion','gabe',origin1,zoo1)
animal2 = Animal.new('giraffe','andrew',origin1,zoo2)
animal3 = Animal.new('kangaroo','jay',origin2,zoo1)
animal4 = Animal.new('emu','patrick',origin2,zoo2)
animal5 = Animal.new("Hippo", "Moto-Moto", origin1, zoo2)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line