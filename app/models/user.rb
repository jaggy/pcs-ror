class User < ActiveRecord::Base
	belongs_to :role
  attr_accessible :email, :first_name, :image, :last_name, :middle_name, :password, :status, :username
	validates :username, :presence => true
end
