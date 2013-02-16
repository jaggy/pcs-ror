require 'spec_helper'

describe Comment do

	it "has a valid factory" do
		FactoryGirl.create(:comment).should be_valid
	end

	it "is invalid wihtout content" do
		FactoryGirl.build(:comment, :content => nil).should_not be_valid
	end

	it "is invalid without an owner" do
		FactoryGirl.build(:comment, :user => nil).should_not be_valid
	end

	it "is invalid without a post" do
		FactoryGirl.build(:comment, :post => nil).should_not be_valid
	end

end
