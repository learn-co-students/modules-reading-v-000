require_relative './class_methods_module.rb'
require_relative './dance_module.rb'

# class Dancer
#   include Dance
#
#   attr_acccessor :name
#
#   def initalize(name)
#     @name = name
#   end
#
# end

class Dancer
  include Dance
extend MetaDancing
  # extend FancyDance::ClassMethods
  # include FanceDance::InstanceMethods


attr_accessor :name

def initialize(name)
  @name = name
end
end
