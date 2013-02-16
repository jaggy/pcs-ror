# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
PcsGit::Application.initialize!
ATTACHMENT_UPLOAD_PATH= "#{Rails.root.to_s}/data/attachments/"
