class MentorReg < ActiveRecord::Base
	has_many :sign_ups, as: :signupable
	has_many :events, through: :sign_ups

	validates :first_name, :last_name, :email, presence: true

	def self.pending?
		where(pending: true)
	end
end
