class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :message, :null => false
      t.boolean :is_read
      t.references :sender, :null => false
      t.references :recipient

      t.timestamps
    end
    add_index :messages, :sender_id
    add_index :messages, :recipient_id
  end
end
