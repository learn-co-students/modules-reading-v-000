require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  include Dance #use all of the methods of the included Dance module as instance methods.
  extend MetaDancing #In order to lend a module's methods to a class as class methods, we use the extend keyword.

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
