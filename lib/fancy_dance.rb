module FancyDance
  module InstanceMethods
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

 module ClassMethods

    def metadata
      "This class produces objects that love to dance."
    end


  end



end

# describe 'FancyDance::ClassMethods module' do
#   let(:dummy_class) {Class.new {extend FancyDance::ClassMethods}}

#   it 'has a metadata method' do
#     expect(dummy_class.metadata).to eq("This class produces objects that love to dance.")
#   end

# end