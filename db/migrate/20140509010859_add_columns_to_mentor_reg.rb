class AddColumnsToMentorReg < ActiveRecord::Migration
  def change
    add_column :mentor_regs, :first_name, :string
    add_column :mentor_regs, :last_name, :string
    add_column :mentor_regs, :email, :string
  end
end
