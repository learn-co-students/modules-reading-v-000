require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer 
  include Dance #Lends all methods of Dance module 
   
   extend MetaDancing 
   
   extend FancyDance::ClassMethods #Lends all ClassMethods from FancyDance
   include FancyDance::InstanceMethods #Lends all InstanceMethods from FancyDance
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end 
  
  
end 