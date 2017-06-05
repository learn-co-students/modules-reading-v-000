require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  include Dance
  extend MetaDancing #lend a module's methods to a class as class methods
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
