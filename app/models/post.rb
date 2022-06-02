class Post < ApplicationRecord
    

    #validates :name, name: true
    #validates :content, name: true
    include Sluggable
    before_validation :default_slug
    validates :slug, format: { with: /\A[a-z0-9\-]+\z/}, uniqueness: true
    

    def as_json(options = nil)
        super(only: [:name, :id])
    end  



    private

     def default_slug
        if !self.name.nil? && !self.name.empty? && (self.slug.nil? || self.slug.empty?  )
        self.slug = name.parameterize
        end
    end
    
end