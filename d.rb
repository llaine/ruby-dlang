require 'ffi'

class User < FFI::Struct
  layout :a, :string,
         :b, :string

  def toto
    puts self[:a], self[:b]
  end
end

module D
  extend FFI::Library
  ffi_lib './libhelloworld.so'
  attach_function :rt_init, :rt_init, [], :int
  attach_function :rt_term, :rt_term, [], :int

  attach_function :fast_blank, :fastBlank, [:string], :bool

  attach_function :users, :getUsers, [:string, :string], User.by_value
end

D.rt_init

at_exit do
  D.rt_term
end
