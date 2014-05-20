class Event < ActiveRecord::Base
	has_many :sign_ups

	def self.upcoming
		where(['event_date > ?', Date.today])
	end

	def self.most_recent
		where(['event_date < ?', Date.today])
	end

	def mentors
		Mentor.joins(:sign_ups).where(sign_ups: { event_id: id })
	end
end
