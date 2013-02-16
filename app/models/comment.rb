class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :content

	validates :content, :presence => true
end
