class SignUp < ActiveRecord::Base
  belongs_to :mentor
  belongs_to :event
end
