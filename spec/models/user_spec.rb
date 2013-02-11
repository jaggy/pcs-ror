require 'spec_helper'

describe User do

	it "has a valid factory" do
		FactoryGirl.create(:user).should be_valid
	end

	it "is invalid without a username" do
		FactoryGirl.build(:user, :username => nil).should_not be_valid
	end

	it "is invalid without a password" do
		FactoryGirl.build(:user, :password => nil).should_not be_valid
	end

	it "is invalid without a first name" do
		FactoryGirl.build(:user, :first_name => nil).should_not be_valid
	end

	it "is valid without a middle name" do
		FactoryGirl.build(:user, :middle_name => nil).should be_valid
	end

	it "is invalid without a last name" do
		FactoryGirl.build(:user, :last_name => nil).should_not be_valid
	end

	it "is invalid without an email" do
		FactoryGirl.build(:user, :email => nil).should_not be_valid
	end

	it "is valid without an image" do
		FactoryGirl.build(:user, :image => nil).should be_valid
	end

	it "is invalid without a role" do
		FactoryGirl.build(:user, :role => nil).should_not be_valid
	end

	it "is should has the password before saving"
	it "doesn't accept duplicate usernames"
	it "doesn't accept dumplicate emails"
	it "authenticates with matching username and password"
	it "is invalid with incorrect passowrd"

end
