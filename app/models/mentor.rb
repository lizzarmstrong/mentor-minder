class Mentor < ActiveRecord::Base
	has_many :sign_ups
	has_many :events, through: :sign_ups
end
