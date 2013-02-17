require 'spec_helper'

describe Conference do

	it "has a valid factory" do
		FactoryGirl.create(:conference).should be_valid
	end

	it "is valid without a status" do
		FactoryGirl.build(:conference, :is_read => nil).should be_valid
	end

	it "is invalid without a message" do
		FactoryGirl.build(:conference, :message => nil).should_not be_valid
	end

	it "is invalid without a sender" do	
		FactoryGirl.build(:conference, :user => nil).should_not be_valid
	end

end
