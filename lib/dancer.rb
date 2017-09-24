require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  include Dance
  def initialize(name)
    @name = name
  end
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
end
