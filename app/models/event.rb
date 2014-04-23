class Event < ActiveRecord::Base
	has_many :sign_ups
	has_many :mentors, through: :sign_ups
end
