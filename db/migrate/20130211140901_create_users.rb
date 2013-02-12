class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => false, :limit => 18
      t.string :password, :null => false, :limit => 60
      t.string :first_name, :null => false, :limit => 18
      t.string :middle_name, :limit => 27
      t.string :last_name, :null => false, :limit => 27
      t.string :email, :limit => 117, :null =>false
      t.string :image
      t.boolean :status, :default => 0
      t.references :role

      t.timestamps
    end
    add_index :users, :role_id
  end
end
