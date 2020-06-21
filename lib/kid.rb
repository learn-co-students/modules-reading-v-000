require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'
class Kid
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  def initialize(name)
    @name = name
  end
  attr_accessor :name
end
