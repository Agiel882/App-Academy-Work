module Toyable
    extend ActiveSupport::Concern
  
    included do
        has_many :toys, as: :toyable
    end
  
    def receive_toy(name)
        toy = Toy.find_by(name: name)
        if toy
            toy.toyable_id = self.id
        else
            toy = Toy.new(name: name, toyable_id: self.id)
        end
        byebug
        toy.save!
    end
  end