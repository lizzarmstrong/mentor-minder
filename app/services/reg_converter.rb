class RegConverter < ActiveRecord::Base

	def self.process_reg(reg_id)
		reg = MentorReg.find(reg_id)
		mentor = Mentor.where(email: reg.email).first_or_initialize

		mentor.update(
					first_name: reg.first_name,
					last_name: reg.last_name, 
					email: reg.email
					)

		reg_signups = SignUp.where(signupable_type: "MentorReg").where(signupable_id: reg_id).map { |signup| signup.event_id}
		reg_signups.each do |signup|
			SignUp.where(signupable_type: "Mentor").where(signupable_id: mentor.id).where(event_id: signup).first_or_create
		end

		reg.update(pending: false)
		

	end	

end