class AddEventsCountToMentorReg < ActiveRecord::Migration
  def change
    add_column :mentor_regs, :events_count, :integer, :default => 0
  end
end
