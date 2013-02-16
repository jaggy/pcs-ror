require 'spec_helper'

describe Comment do

	it "has a valid factory" do
		FactoryGirl.create(:comment).should be_valid
	end

	it "is invalid wihtout content" do
		FactoryGirl.build(:comment, :content => nil).should_not be_valid
	end

	it "is invalid without an owner"
	it "is invalid without a post"

end
