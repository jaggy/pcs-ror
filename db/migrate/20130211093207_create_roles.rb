class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name, :limit => 18, :null => false
      t.text :description

      t.timestamps
    end
  end
end
