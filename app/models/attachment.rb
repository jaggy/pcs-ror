class Attachment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :mimetype, :name, :path, :size
end
