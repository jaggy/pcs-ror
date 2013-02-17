class RevertMessageStatus < ActiveRecord::Migration
  def up
		change_column :messages, :is_read, :boolean, :default => 0, :null => true
		change_column :conferences, :is_read, :boolean, :default => 0, :null =>true
  end

  def down
		change_column :messages, :is_read, :boolean, :default => 0, :null => false
		change_column :conferences, :is_read, :boolean, :default => 0, :null => false
  end
end
