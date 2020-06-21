require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'


# Step 2: Define the Classes aka Tell the Kid Class to include the capabilities of the Dance module
# Step 3: Include the Module aka Lend the Two Classes All of the Methods of the Dance Module with Include keyword
# used as instance methods

# extend the MetaDancing module

class Dancer
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
