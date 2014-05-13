class AddSignupableIdandTypeToSignup < ActiveRecord::Migration
  def change
  	add_column :sign_ups, :signupable_id, :integer
  	add_column :sign_ups, :signupable_type, :string
  	remove_column :sign_ups, :mentor_id
  end
end
