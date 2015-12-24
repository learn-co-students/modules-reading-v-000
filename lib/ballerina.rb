require_relative './class_methods_module.rb'
require_relative './dance_module.rb'

class Ballerina
  include Dance
  extend MetaDancing
  #the Dance module's methods are available to the
  #ballerina and kid classes as instance methods
  attr_accessor :name

  def initialize(name)
    @name = name
  end


end 