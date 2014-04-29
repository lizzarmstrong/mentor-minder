class Mentor < ActiveRecord::Base
	has_many :sign_ups
	has_many :events, through: :sign_ups

	def self.gendered (x)
		where(gender: x)
	end
end
