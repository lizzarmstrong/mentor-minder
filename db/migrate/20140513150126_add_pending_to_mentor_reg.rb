class AddPendingToMentorReg < ActiveRecord::Migration
  def change
    add_column :mentor_regs, :pending, :boolean, :default => true
  end
end
