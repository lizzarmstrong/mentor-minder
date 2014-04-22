class AddLastNametoMentors < ActiveRecord::Migration
  def change
  	add_column :mentors, :last_name, :string
  end
end
