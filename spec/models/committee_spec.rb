require 'spec_helper'

describe Committee do
	it "has a valid factory" do
		FactoryGirl.create(:committee).should be_valid
	end

	it "is invalid without a name" do
		FactoryGirl.build(:committee, :name => nil).should_not be_valid
	end

	it "is valid without a committee head" do
		FactoryGirl.build(:committee, :user => nil).should be_valid
	end

	it "does not accept duplicate names" do
		committee = FactoryGirl.create(:committee)
		FactoryGirl.build(:committee, :name => committee.name).should_not be_valid
	end

end
