require_relative './dance_module.rb'
require_relative './class_methods_module.rb'

class Kid
  attr_accessor :name
  include Dance #this includes the Dance module from... well, dance_module.rb.
  extend MetaDancing
  
  def initialize(name)
    @name = name
  end

end
