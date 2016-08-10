require 'ffi'


module D
  extend FFI::Library
  ffi_lib './app.so'
  attach_function :rt_init, :rt_init, [], :int
  attach_function :rt_term, :rt_term, [], :int

  attach_function :fast_blank, :fastBlank, [:string], :bool
end

D.rt_init

at_exit do
  D.rt_term
end
