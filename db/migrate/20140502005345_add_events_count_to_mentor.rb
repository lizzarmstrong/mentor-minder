class AddEventsCountToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :events_count, :integer, :default => 0

    Mentor.all.each do |p|
    	p.update_attribute :events_count, p.events.length
    end
  end
end
