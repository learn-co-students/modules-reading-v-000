require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'
class Kid
  extend FancyDance::ClassMethods
  #`include` is used to add functionality to our classes via instance methods.
  include FancyDance::InstanceMethods #lend a module's methods to a class as class methods
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
