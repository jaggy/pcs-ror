class User < ActiveRecord::Base
	has_one :committee
	has_and_belongs_to_many :committees
	belongs_to :role

  attr_accessible :email, :first_name, :image, :last_name, :middle_name, :password, :password_confirmation, :status, :username, :committee
	validates :username, :presence => true, :uniqueness => true
	validates :password, :presence => {:on => :create}
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :email, :presence => true, :uniqueness => true
	validates :role, :presence => true
	validate :committee_count

	has_secure_password

	def committee_count
		if(self.role && self.role.name === 'Standard' && self.committees.size > 1)
			errors.add(:committees, 'Account is not allowed to have multiple committees') 
		end
	end

end
