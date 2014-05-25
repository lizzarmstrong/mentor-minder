class SignUp < ActiveRecord::Base
  belongs_to :signupable, polymorphic: true, counter_cache: :events_count
  belongs_to :event


end
