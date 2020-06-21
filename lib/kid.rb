require_relative './dance_module.rb'
require_relative './class_methods_module.rb'


class Kid
  
  include Dance
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
  extend MetaDancing
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
 
end
end
