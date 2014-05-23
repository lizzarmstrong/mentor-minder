class MentorReg < ActiveRecord::Base
	has_many :sign_ups, as: :signupable
	has_many :events, through: :sign_ups

	def self.pending?
		where(pending: true)
	end
end
