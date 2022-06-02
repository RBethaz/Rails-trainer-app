class Post < ApplicationRecord
    

    #validates :name, name: true
    #validates :content, name: true
    include Sluggable

    #scope :online, -> (online) do 
    #   where(online: online) if online.is_a? Integer
    #end

    #default_scope { order(created_at: :desc)}
    scope :online, -> { where(online: 1)}
    

    before_validation :default_slug
    validates :slug, format: { with: /\A[a-z0-9\-]+\z/}, uniqueness: true
    

    def as_json(options = nil)
        super(only: [:name, :id])
    end 
    
end