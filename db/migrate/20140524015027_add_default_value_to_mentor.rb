class AddDefaultValueToMentor < ActiveRecord::Migration
  def change
  	change_column :mentors, :events_count, :integer, :null => false, :default => 0
  end
end
