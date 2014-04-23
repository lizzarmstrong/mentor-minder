class CreateSignUps < ActiveRecord::Migration
  def change
    create_table :sign_ups do |t|
      t.references :mentor, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
