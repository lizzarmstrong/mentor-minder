class RenameNametoFirstName < ActiveRecord::Migration
  def change
  	change_table :mentors do |t|
  		t.rename :name, :first_name
  	end	
  end
end
