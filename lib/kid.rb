require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

# class Kid
#   include Dance
#   # If we use include keyword, we allow our classes to use all of the methods
#   # of the included module as instance methods.
#   extend MetaDancing
#   # In order to lend a module's methods to a class as class methods, we use the extend keyword.
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#   end
# end

class Kid
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
end
