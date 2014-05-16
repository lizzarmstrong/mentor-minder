class Mentor < ActiveRecord::Base
	has_many :sign_ups, as: :signupable
	has_many :events, through: :sign_ups, counter_cache: true

	def self.gendered (x)
		where(gender: x)
	end

end
