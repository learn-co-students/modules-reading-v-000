require_relative '../lib/dance_module.rb'
require_relative '../lib/class_methods_module.rb'
require_relative '../lib/fancy_dance.rb'
class Dancer
  include Dance

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
end
