require 'spec_helper'

describe Post do

	it "has a valid factory" do
		FactoryGirl.create(:post).should be_valid
	end

	it "is invalid without a title" do
		FactoryGirl.build(:post, :title => nil).should_not be_valid
	end

	it "is invalid without an owner" do
		FactoryGirl.build(:post, :user => nil).should_not be_valid
	end

	it "is invalid without a category" do
		FactoryGirl.build(:post, :category => nil).should_not be_valid
	end

	it "is valid without content" do
		FactoryGirl.build(:post, :content => nil).should be_valid
	end

	it "is valid without a parent" do
		FactoryGirl.build(:post, :parent => nil).should be_valid
	end

	it "is valid without a discussion" do
		FactoryGirl.build(:post, :discussion => nil).should be_valid
	end

	it "does not accept duplicate titles"
	it "cannot be it's own parent"
	

end
