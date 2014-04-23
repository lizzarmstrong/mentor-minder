class Event < ActiveRecord::Base
	has_many :mentors, through: :sign_ups
end
