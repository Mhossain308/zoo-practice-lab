require 'pry'
require 'bundler/setup'
Bundler.require
require_all 'app/models'


zoo1 = Zoo.new('central park', '111 okay st')
zoo2 = Zoo.new('Bonx Zoo', '222 thank you st')
origin1 = Origin.new('Africa', 'Egypt')
origin2 = Origin.new('Asia', "Uzbekistan")
animal1 = Animal.new('lion','gabe',origin1,zoo1)
animal2 = Animal.new('giraffe','andrew',origin1,zoo2)
animal3 = Animal.new('kangaroo','jay',origin2,zoo1)
animal4 = Animal.new('emu','patrick',origin2,zoo2)


binding.pry