class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :null => false
      t.text :content
      t.references :parent
      t.references :user, :null => false
      t.references :discussion
      t.references :category, :null => false

      t.timestamps
    end
    add_index :posts, :parent_id
    add_index :posts, :user_id
    add_index :posts, :discussion_id
    add_index :posts, :category_id
  end
end
