class Committee < ActiveRecord::Base
	has_many :discussions
	has_and_belongs_to_many :users

  belongs_to :user
  
	attr_accessible :description, :name
	validates :name, :presence => true, :uniqueness => true

end
