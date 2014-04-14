class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :email
      t.string :gender

      t.timestamps
    end
  end
end
