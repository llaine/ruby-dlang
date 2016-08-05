require 'ffi'
require './d'


result = D.users('Test', 'test')

puts result.toto
