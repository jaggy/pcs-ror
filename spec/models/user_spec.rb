require 'spec_helper'

describe User do

	it "has a valid factory" do
		FactoryGirl.create(:user).should be_valid
	end

	it "is invalid without a username" do
		FactoryGirl.build(:user, :username => nil).should_not be_valid
	end
	it "is invalid without a password"
	it "is invalid without a first name"
	it "is valid without a middle name"
	it "is invalid without a last name"
	it "is invalid without an email"
	it "is valid without an image"
	it "is invalid without a role"
	it "is should has the password before saving"
	it "doesn't accept duplicate usernames"
	it "doesn't accept dumplicate emails"
	it "authenticates with matching username and password"
	it "is invalid with incorrect passowrd"

end
