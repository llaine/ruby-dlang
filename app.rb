require 'ffi'
require './d'

d = D.users('Test', 'test')

puts d[:results][1][:a]
