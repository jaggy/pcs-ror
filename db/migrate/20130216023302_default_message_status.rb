class DefaultMessageStatus < ActiveRecord::Migration
  def up
		change_column :messages, :is_read, :boolean, :null => false, :default => 0
		change_column :conferences, :is_read, :boolean, :null => false, :default => 0
  end

  def down
		change_column :messages, :is_read, :boolean, :null => false
		change_column :conferences, :is_read, :boolean, :null => false
  end
end
