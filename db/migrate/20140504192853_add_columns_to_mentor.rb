class AddColumnsToMentor < ActiveRecord::Migration
  def change
  	add_column :mentors, :phone, :string
  	add_column :mentors, :city, :string
  	add_column :mentors, :website, :string
  	add_column :mentors, :twitter, :string
  	add_column :mentors, :linkedin, :string
  	add_column :mentors, :work, :string
  	add_column :mentors, :job, :string
  	add_column :mentors, :bio, :text
  	add_column :mentors, :why_involved, :text
  	add_column :mentors, :emergency_contact, :string
  	add_column :mentors, :references, :text
  	add_column :mentors, :permission_to_contact_references, :boolean
  end
end
