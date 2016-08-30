require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'
class Dancer
    #include Dance  #allows the use of the dance module methods as instance methods
    #extend MetaDancing  #extend keyword will "extend" module methods as class methods

    extend FancyDance::ClassMethods  #uses namespace (::) notation to show parent child relationship of nested modules of class methods in FancyDance
    include FancyDance::InstanceMethods  #uses namespace(::) notation to show parent child relationship of nested modules of intance methods in FancyDance

    attr_accessor :name

    def initialize(name)
        @name = name
    end
end
