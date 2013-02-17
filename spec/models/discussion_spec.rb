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

	describe "duplcate title names" do
		
		before :each do
			@committee = FactoryGirl.create(:committee)
			@discussion = FactoryGirl.create(:discussion, :committee => @committee)
		end

		context "from the same committee" do
			it "is not valid" do
				FactoryGirl.build(:discussion, :committee => @committee, :title => @discussion.title).should_not be_valid
			end
		end

		context "from different committees" do
			it "is valid" do
				different_committee = FactoryGirl.create(:committee, :name => 'Different Committee Name')
				FactoryGirl.build(:discussion, :committee => different_committee, :title => @discussion.title).should be_valid
			end
		end

	end

end
