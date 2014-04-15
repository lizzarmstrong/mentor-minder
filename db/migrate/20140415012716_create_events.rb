class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :category
      t.string :age_group
      t.string :topic
      t.date :event_date

      t.timestamps
    end
  end
end
