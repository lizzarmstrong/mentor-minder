class CreateMentorRegs < ActiveRecord::Migration
  def change
    create_table :mentor_regs do |t|
      
      t.timestamps
    end
  end
end
