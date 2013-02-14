class Discussion < ActiveRecord::Base
  belongs_to :committee
  belongs_to :user
  attr_accessible :description, :title
end
