class Role < ActiveRecord::Base
	has_many :users
  attr_accessible :description, :name
	validates :name, :presence => true, :uniqueness => true
end

