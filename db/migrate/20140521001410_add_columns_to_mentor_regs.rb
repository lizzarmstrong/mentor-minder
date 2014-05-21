class AddColumnsToMentorRegs < ActiveRecord::Migration
  def change
    add_column :mentor_regs, :gender, :string
    add_column :mentor_regs, :first_aid_certified, :boolean, :default => false
    add_column :mentor_regs, :phone, :string
    add_column :mentor_regs, :city, :string
    add_column :mentor_regs, :website, :string
    add_column :mentor_regs, :twitter, :string
    add_column :mentor_regs, :linkedin, :string
    add_column :mentor_regs, :work, :string
    add_column :mentor_regs, :job, :string
    add_column :mentor_regs, :bio, :text
    add_column :mentor_regs, :why_involved, :text
    add_column :mentor_regs, :emergency_contact, :string
    add_column :mentor_regs, :references, :text
    add_column :mentor_regs, :permission_to_contact_references, :boolean
  end
end
