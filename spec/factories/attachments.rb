# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attachment do
    mimetype ['pdf', 'jpg', 'doc', 'docx', 'png', 'gif', 'psd', 'ppt', 'brb', 'lol'].sample
    name { |a| "Attachment.#{a.mimetype}" }
    path { |a| "#{ATTACHMENT_UPLOAD_PATH}#{a.name}" }
    size { Faker::Address.zip_code }
    association :post
  end
end
