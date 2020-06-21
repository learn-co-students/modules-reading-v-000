require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  #a module groups multiple instance methods to be used in multiple classes
  #To lend our two classes all of the methods of the Dance module, we use the include keyword:
  #If we use include keyword, we allow our classes to use all of the methods of the included module as instance methods.
      #include Dance
#extend allows you to copy over class methods
      #extend MetaDancing

#below combines nested modules as instance methods (include) and class methods (extend)
  include FancyDance::InstanceMethods
  extend  FancyDance::ClassMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end


#
#:: VERSUS<
#Inheritance using the < syntax, implies that a class is a type of something. A BMW class should inherit from a Car class because a BMW is a type of car: class BMW < Car.
#But what about the :: that we're using for our modules? The :: syntax just denotes a name-space. Doing BMW::Car just gives the BMW class access to all constants, instance methods, etc, without stating that a BMW is a type of car. The :: syntax carries all public items over to the inheriting class or module.
#That's it! Now that we are familiar with several methods of sharing code between classes, you're ready to move on to the next few labs.
#CONCLUSION
#If you have a module whose methods you would like to be used in another class as instance methods, then you must include the module.
#If you want a module's methods to be used in another class as class methods, you must extend the module.
