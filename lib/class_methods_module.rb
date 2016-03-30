

module MetaDancing
 
  def metadata
    "This class produces objects that love to dance."
  end

  class Ballerina
    extend MetaDancing
  end

  class Kid
    extend MetaDancing
  end

end