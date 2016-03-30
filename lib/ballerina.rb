require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './combo_module.rb'

class Ballerina

  include FancyDance::InstanceMethods
  include Dance 
  extend FancyDance::ClassMethods
  extend MetaDancing
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

end