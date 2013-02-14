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

	it "doesn't accept duplicate usernames"	do
		user =  FactoryGirl.create(:user)
		FactoryGirl.build(:user, :username => user.username).should_not be_valid
	end

	it "doesn't accept duplicate emails"  do
		user =  FactoryGirl.create(:user)
		FactoryGirl.build(:user, :email => user.email).should_not be_valid
	end

	it "hashes the password before saving" do
		user = FactoryGirl.create(:user)
		user.password.should_not == user.password_digest
	end

	it "is invalid without a matching confirmation password" do
		FactoryGirl.build(:user, :password_confirmation => 'a different password').should_not be_valid
	end

	it "authenticates with matching username and password" do
		user = FactoryGirl.create(:user)
		login = User.where(:username => user.username).first
		login.authenticate(user.password).should == user
	end

	it "is invalid with incorrect passowrd" do
		user = FactoryGirl.create(:user)
		login = User.where(:username => user.username).first
		login.authenticate('wrong password').should == false
	end

	it "with <Standard> priviliges is invalid with multiple Committees" do
		role = FactoryGirl.build(:role, :name => 'Standard')
		committees =  [FactoryGirl.create(:committee, :user => nil), FactoryGirl.create(:committee, :user => nil) ]
		user = FactoryGirl.build(:user, :role => role, :committees => committees).should_not be_valid

	end

	it "with <Administrator> privileges is valid with multiple Committees"
	it "with <Moderator> privileges is valid with multiple Committees"
end
