require 'spec_helper'

describe Attachment do

	it "has a valid factory" do
		FactoryGirl.create(:attachment).should be_valid
	end

	it "is invalid without a name" do
		FactoryGirl.build(:attachment, :name => nil).should_not be_valid
	end

	it "is invalid without a mimetype" do
		FactoryGirl.build(:attachment, :mimetype => nil).should_not be_valid
	end

	it "is invalid wihtout a path" do
		FactoryGirl.build(:attachment, :path => nil).should_not be_valid
	end

	it "is invalid without a size" do
		FactoryGirl.build(:attachment, :size => nil).should_not be_valid
	end

	it "is invalid without a post" do
		FactoryGirl.build(:attachment, :post => nil).should_not be_valid
	end

	it "is invalid if <ATTACHMENT_UPLOAD_PATH> is not used for path" do
		FactoryGirl.build(:attachment, :path => '/Some/different/path/').should_not be_valid
	end

end
