
require_relative './class_methods_module'
require_relative './dance_module'


class Kid
  include Dance
  extend MetaDancing
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
