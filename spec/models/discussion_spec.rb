require 'spec_helper'

describe Discussion do

	it "has a valid factory" do
		FactoryGirl.create(:discussion).should be_valid
	end

	it "is invalid without a title"
	it "is valid without a description"
	it "is invalid without an owner"
	it "is invalid without a committee"
	it "does not allow duplicate titles"

end
