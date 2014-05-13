class SignUp < ActiveRecord::Base
  belongs_to :signupable, polymorphic: true
  belongs_to :event
end
