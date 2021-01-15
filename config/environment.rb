require 'pry'
require 'bundler/setup'
Bundler.require
require_all 'app/models'


zoo1 = Zoo.new('central park', '111 okay st')
origin1 = Origin.new('Africa', 'Egypt')
animal1 = Animal.new('lion','gabe',origin1,zoo1)


binding.pry