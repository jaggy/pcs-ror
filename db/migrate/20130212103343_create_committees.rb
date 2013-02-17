class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.string :name, :limit => 40, :null => false
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :committees, :user_id
  end
end
