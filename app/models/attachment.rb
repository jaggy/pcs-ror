class Attachment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :mimetype, :name, :path, :size
	
	validates :name, :presence => true
	validates :mimetype, :presence => true
	validates :path, :presence => true
	validates :size, :presence => true
	validates :post, :presence => true

	validate :path_integrity

	def path_integrity
		if path.present? && path.index("#{ATTACHMENT_UPLOAD_PATH}").nil?
			errors.add(:path, 'Path integrity violated')
		end
	end

end
