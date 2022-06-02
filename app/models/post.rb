class Post < ApplicationRecord

    validates_with NameValidator

    def as_json(options = nil)
        super(only: [:name, :id])
    end  
    
end