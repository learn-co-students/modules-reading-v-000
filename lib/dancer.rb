# require_relative './class_methods_module.rb'
# require_relative './dance_module.rb'
require_relative 'fancy_dance.rb'

class Dancer
  # include Dance #gives this class access to the methods in the Dance module as INSTANCE methods.
  # extend MetaDancing #gives this class access to the MetaDancing module as CLASS methods.

  ##### REFACTOR with NESTED MODULE NAMESPACING ####
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
