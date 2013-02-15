require 'spec_helper'

describe Post do

	it "has a valid factory" do
		FactoryGirl.create(:post).should be_valid
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

	it "is invalid without a title if unless from a discussion" do
		FactoryGirl.build(:post, :title => nil, :discussion => nil).should_not be_valid
	end

	it "is invalid with a title if it's from a discussion" do
		discussion = FactoryGirl.create(:discussion)
		FactoryGirl.build(:post, :title => 'should not be valid', :discussion => discussion).should_not be_valid
	end

	it "does not accept duplicate titles if unless from a discussion" do
		post = FactoryGirl.create(:post)
		FactoryGirl.build(:post, :title => post.title).should_not be_valid
	end

	it "accepts duplicate titles if it's not from a discussion" do
		discussion = FactoryGirl.create(:discussion)
		post = FactoryGirl.create(:post, :title => nil, :discussion => discussion)
		FactoryGirl.build(:post, :title => post.title,  :discussion => discussion).should be_valid
	end


end
