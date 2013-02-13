class CreateCommitteesUsersJoinTable < ActiveRecord::Migration
  def change
		create_table :committees_users, :id => false do |t|
			t.references :user
			t.references :committee
		end
  end
end
