require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'
class Kid
  include FancyDance::InstanceMethods
  include Dance
  extend MetaDancing
  extend FancyDance::ClassMethods
  attr_accessor :name
  def initialize(name)
    @name=name
  end
end
