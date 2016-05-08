require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Ballerina
  extend FancyDance::ClassMethods
  extend MetaDancing
  include FancyDance::InstanceMethods
  include Dance

  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
end