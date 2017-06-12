require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid
  #To lend our two classes all of the methods of the Dance module, we use the include keyword:
#If we use include keyword, we allow our classes to use all of the methods of the included module as instance methods.
  include Dance
  #extend allows you to copy over class variables
  extend  MetaDancing
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
