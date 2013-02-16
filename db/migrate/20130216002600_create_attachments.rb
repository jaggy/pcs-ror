class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :name, :null => false
      t.string :mimetype, :null => false
      t.string :path, :null => false
      t.integer :size, :unsigned => true, :null => false
      t.references :post

      t.timestamps
    end
    add_index :attachments, :post_id
  end
end
