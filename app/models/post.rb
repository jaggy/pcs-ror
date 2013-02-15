class Post < ActiveRecord::Base
	has_one :child, :class_name => 'Post', :foreign_key => 'parent_id'

  belongs_to :post, :class_name => 'Post', :foreign_key => 'parent_id'
  belongs_to :user
  belongs_to :discussion
  belongs_to :category

  attr_accessible :content, :title
end
