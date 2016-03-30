require_relative './class_methods_module.rb'
require_relative './dance_module.rb'

class Ballerina 

 attr_accessor :name 
 extend MetaDancing 
 include Dance 

 def initialize(name)
  @name = name 
   
 end




end 