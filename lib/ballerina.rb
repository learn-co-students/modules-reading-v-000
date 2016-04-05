require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Ballerina
  include FancyDance::InstanceMethods
  extend FancyDance::InstanceMethods

  include Dance
  extend MetaDancing

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end