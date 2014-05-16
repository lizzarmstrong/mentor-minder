class RegConverter < ActiveRecord::Base

	def self.process_reg(reg_id)
		reg = MentorReg.find(reg_id)
		mentor = Mentor.where(email: reg.email).first_or_initialize
		mentor.update(
					first_name: reg.first_name,
					last_name: reg.last_name, 
					email: reg.email
					)

		reg.update(pending: false)
		

	end	

end