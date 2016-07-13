#Better way to share class and instance methhods with classes

module FancyDance #parent

  module InstanceMethods #nested instance methods to use as a module for kid and dancer classes

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

  module ClassMethods #nested class methods to use as a module for kid and dancer classes

    def metadata
      "This class produces objects that love to dance."
    end

  end

end
