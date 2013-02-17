class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.boolean :is_read, :null => false
      t.references :message, :null => false
      t.references :user, :null => false

      t.timestamps
    end
    add_index :conferences, :message_id
    add_index :conferences, :user_id
  end
end
