class CreateCommitteesUsersJoinTable < ActiveRecord::Migration
  def change
		create_table :committees_users, :id => false do |t|
			t.references :user, :committee
		end
		add_index :committees_users, [:user_id, :committee_id]
  end
end
