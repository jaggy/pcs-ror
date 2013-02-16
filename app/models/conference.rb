class Conference < ActiveRecord::Base
  belongs_to :message
  belongs_to :user
  attr_accessible :is_read

	validates :message, :presence => true
	validates :user, :presence => true

end
