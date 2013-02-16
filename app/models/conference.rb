class Conference < ActiveRecord::Base
  belongs_to :message
  belongs_to :user
  attr_accessible :is_read
end
