class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :title, :null => false
      t.text :description
      t.references :committee, :null => false
      t.references :user, :null => false

      t.timestamps
    end
    add_index :discussions, :committee_id
    add_index :discussions, :user_id
  end
end
