class Category < ActiveRecord::Base
	has_many :posts

  attr_accessible :description, :name
	validates :name, :presence => true, :uniqueness => true

end
