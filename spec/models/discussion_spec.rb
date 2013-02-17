require 'spec_helper'

describe Discussion do

	it "has a valid factory" do
		FactoryGirl.create(:discussion).should be_valid
	end

	it "is invalid without a title"	do
		FactoryGirl.build(:discussion, :title => nil).should_not be_valid
	end

	it "is valid without a description" do
		FactoryGirl.build(:discussion, :description => nil).should be_valid
	end

	it "is invalid without an owner" do
		FactoryGirl.build(:discussion, :user => nil).should_not be_valid
	end

	it "is invalid without a committee" do
		FactoryGirl.build(:discussion, :committee => nil).should_not be_valid
	end

	it "does not allow duplicate titles of the same committee" do
		committee = FactoryGirl.create(:committee)
		discussion = FactoryGirl.create(:discussion, :committee => committee)
		FactoryGirl.build(:discussion, :committee => committee, :title => discussion.title).should_not be_valid
	end

	it "allows the same title for different committees" do
		committee = FactoryGirl.create(:committee)
		different_committee = FactoryGirl.create(:committee, :name => 'Different Committee Name')
		discussion = FactoryGirl.create(:discussion, :committee => committee)
		FactoryGirl.build(:discussion, :committee => different_committee, :title => discussion.title).should be_valid
	end

end
