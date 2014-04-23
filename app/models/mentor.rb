class Mentor < ActiveRecord::Base
	has_many :events, through: :sign_ups
end
