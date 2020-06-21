require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  include FancyDance::InstanceMethods
  extend FancyDance::ClassMethods
  # When we use the include keyword, we all our classes to use all of the methods of the included module as instance moethds.
  # However, to lend module's methods to a class as class methods, we use the extend keyword.

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
