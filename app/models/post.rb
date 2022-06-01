class Post < ApplicationRecord

    def as_json(options = nil)
        super(only: [:name, :id])
    end  
    
end