require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  #extend is used to add additional functionality to our classes via class methods.
  extend FancyDance::ClassMethods
  #include is used to add functionality to our classes via instance methods.
  include FancyDance::InstanceMethods


  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
