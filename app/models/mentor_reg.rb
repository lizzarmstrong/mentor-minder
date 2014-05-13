class MentorReg < ActiveRecord::Base
	has_many :sign_ups, as: :signupable
end
