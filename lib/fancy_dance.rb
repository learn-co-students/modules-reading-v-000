module FancyDance
  #define a module that will hold all the instance methods
  module InstanceMethods
    #define all instance methods that we intend to use
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
  #define a module for Class methods
  module ClassMethods
    #define metadata or any class methods
    def metadata
      "This class produces objects that love to dance."
    end
  end
end
