class User < ActiveRecord::Base
	belongs_to :role
  attr_accessible :email, :first_name, :image, :last_name, :middle_name, :password, :status, :username
	validates :username, :presence => true, :uniqueness => true
	validates :password, :presence => true
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :email, :presence => true
	validates :role, :presence => true
end
