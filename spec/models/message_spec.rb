require 'spec_helper'

describe Message do

	it "has a valid factory" do
		FactoryGirl.create(:message).should be_valid
	end


	it "is invalid without a message" do
		FactoryGirl.build(:message, :message => nil).should_not be_valid
	end

	it "is invalid without a sender" do
		FactoryGirl.build(:message, :sender => nil).should_not be_valid
	end
	
	it "is valid without a recipient" do
		FactoryGirl.build(:message, :recipient => nil).should be_valid
	end

end
