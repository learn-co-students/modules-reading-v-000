require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  include FancyDance::InstanceMethods
  extend FancyDance::ClassMethods

  #Suggest leaving this in to improve flow of the lesson. If you take it out, the tests no longer pass
  #Then the lesson can create a nameless instance of Dance and Kid mike = Kid.new ,etc.
  attr_accessor :name

  def initialize(name="")
    @name = name
  end

end
