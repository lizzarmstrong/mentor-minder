class MentorReg < ActiveRecord::Base
	has_many :sign_ups, as: :signupable

	def self.pending?
		where(pending: true)
	end
end
