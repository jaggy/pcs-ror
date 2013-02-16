class Message < ActiveRecord::Base
	has_many :conferences

  belongs_to :recipient, :class_name => 'User', :foreign_key => 'recipient_id'
  belongs_to :sender, :class_name => 'User', :foreign_key => 'sender_id'
  attr_accessible :is_read, :message

	validates :message, :presence => true
	validates :sender, :presence => true
end
