class Event < ActiveRecord::Base
	has_many :sign_ups
	has_many :mentors, through: :sign_ups

	def self.upcoming
		where(['event_date > ?', Date.today])
	end
end
