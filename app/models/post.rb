class Post < ActiveRecord::Base
	has_one :child, :class_name => 'Post', :foreign_key => 'parent_id'
	has_many :posts

  belongs_to :parent, :class_name => 'Post', :foreign_key => 'parent_id'
  belongs_to :user
  belongs_to :discussion
  belongs_to :category

  attr_accessible :content, :title
	validates :title, :presence => true, :unless => :from_a_discussion?
	validates :title, :uniqueness => true, :unless => :from_a_discussion?
	validates :user, :presence => true
	validates :category, :presence => true
	validate :blank_title_for_discussion_post

	def from_a_discussion?
		discussion.present?
	end

	def blank_title_for_discussion_post
		if from_a_discussion? && title.present?
			errors.add(:title, 'Title is not allowed if it belongs to a discussion')
		end
	end

end
