require 'spec_helper'

describe Role do

	it "has a valid factory" do
		FactoryGirl.create(:role).should be_valid
	end
	it "is invalid without a role name"
	it "doesn't allow duplicate role names"

end
