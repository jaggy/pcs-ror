class Committee < ActiveRecord::Base
  belongs_to :user
	has_and_belongs_to_many :users
  attr_accessible :description, :name

	validates :name, :presence => true, :uniqueness => true

end
