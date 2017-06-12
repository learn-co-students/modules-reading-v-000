require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  #a module groups multiple instance methods to be used in multiple classes
  #To lend our two classes all of the methods of the Dance module, we use the include keyword:
  #If we use include keyword, we allow our classes to use all of the methods of the included module as instance methods.
      #include Dance
#extend allows you to copy over class methods
      #extend MetaDancing

#below combines nested modules as instance methods (include) and class methods (extend)
  include FancyDance::InstanceMethods
  extend  FancyDance::ClassMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
