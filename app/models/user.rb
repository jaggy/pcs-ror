class User < ActiveRecord::Base
	has_one :committee
	has_many :discussions
	has_many :posts
	has_and_belongs_to_many :committees

	belongs_to :role

  attr_accessible :email, :first_name, :image, :last_name, :middle_name, :password, :password_confirmation, :status, :username, :committee
	validates :username, :presence => true, :uniqueness => true, :length => { :minimum => 5, :maximum => 18 }, :format => { :with => /^[a-zA-Z][a-zA-Z0-9._]+$/ }
	validates :password, :presence => {:on => :create}, :length => { :minimum => 6 }
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :email, :presence => true, :uniqueness => true, :format => { :with => /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i }
	validates :role, :presence => true

	validate :committee_count

	has_secure_password

	def committee_count
		if(role && role.name === 'Standard' && committees.size > 1)
			errors.add(:committees, 'User is not allowed to have multiple committees') 
		end
	end

end
