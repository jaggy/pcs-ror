class ChangeMessageReadParameters < ActiveRecord::Migration
  def up
		change_column :messages, :is_read, :boolean, :null => false
  end

  def down
		change_column :messages, :is_read, :boolean
  end
end
