class AddFirstAidCertifiedToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :first_aid_certified, :boolean, :default => false
  end
end
