require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid
  include FancyDance::InstanceMethods
  extend FancyDance::ClassMethods
  # When we use the include keyword, we all our classes to use all of the methods of the included module as instance moethds.
  # However, to lend module's methods to a class as class methods, we use the extend keyword.
  # We refer to the name-spaced modules or classes with ::. This syntax references the parent and child relationship of the nested modules.

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
