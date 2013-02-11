class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :image
      t.boolean :status
      t.references :role

      t.timestamps
    end
    add_index :users, :role_id
  end
end
