# require_relative './class_methods_module.rb'
# require_relative './dance_module.rb'

require_relative './fancy_dance.rb'  #require fancy_dance nested modules


class Dancer
  # include Dance #share instance method - not a good way to differenciate
  # extend MetaDancing #share class method - not a good way to differenciate

  extend FancyDance::ClassMethods  #share class methods from fancy_dance nested module
  include FancyDance::InstanceMethods #share instance class methods from fancy_dance nested module

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
