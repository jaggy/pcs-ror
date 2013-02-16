require 'spec_helper'

describe Conference do

	it "has a valid factory" do
		FactoryGirl.create(:conference).should be_valid
	end

	it "is invalid without a status"
	it "is invalid without a message"
	it "is invalid without a sender"

end
