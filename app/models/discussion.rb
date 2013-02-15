class Discussion < ActiveRecord::Base
	has_many :posts

  belongs_to :committee
  belongs_to :user
  
	attr_accessible :description, :title
	validates :title, :presence => true
	validates :user, :presence => true
	validates :committee, :presence => true

	validate :unique_committee_post

	def unique_committee_post
		if self.committee && self.new_record? && Discussion.where(:title => self.title, :committee_id => self.committee).present?
			errors.add(:title, 'Title has already been taken')
		end
	end

end
