#=> These are the things instances of Kid & Dancer classes can both do:
#=> <<instances>>
module Dance
  def twirl
    "I'm twirling!"
  end

  def jump
    "Look how high I'm jumping!"
  end

  def pirouette
    "I'm doing a pirouette"
  end

  def take_a_bow
    "Thank you, thank you. It was a pleasure to dance for you all."
  end
end
# ///////////////////////////
#=> These are the things the Kid & Dancer classes can both do:
#=> <<classes>>
module MetaDancing
  def metadata
    "This class produces objects that love to dance."
  end
end 
# ///////////////////////////
#=> This is a better way of organizing instance & class modules than the 
#   two shown above.
#=> <<instances>> *and* <<classes>>
module FancyDance
  module InstanceMethods              # you "include" these instance methods
    def superjump 
      "I'm just one jumping instance"
    end
  end
  module ClassMethods                 # you "extend" these class methods
    def megajump 
      "I'm a whole class of MOFO's jumping"
    end
  end 
end
# ///////////////////////////
class Dancer
  include Dance       #=> "include" - These are instance methods
  extend MetaDancing  #=> "extend"  - These are class methods
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
# ///////////////////////////
class Kid
  include Dance
  extend MetaDancing
  include FancyDance::InstanceMethods
  extend FancyDance::ClassMethods
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end