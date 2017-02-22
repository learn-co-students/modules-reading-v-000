#require_relative './class_methods_module.rb'
#require_relative './dance_module.rb'
require_relative './fancy_dance.rb'


class Dancer
  #include Dance #imports Dance module from dance_module.rb
  #extend MetaDancing
  extend FancyDance::ClassMethods #now points to the FancyDance class' ClassMethods module.
  include FancyDance::InstanceMethods
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
