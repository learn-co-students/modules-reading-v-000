class Kid
  extend MetaDancing
  include Dance

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
