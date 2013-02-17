class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, :limit => 32, :null => false
      t.text :description

      t.timestamps
    end
  end
end
