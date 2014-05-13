class MentorRegsController < ApplicationController
	def index
		@mentor_regs = MentorReg.all
	end	

	def process_reg
		reg = MentorReg.find(params[:id])
		mentor = Mentor.where(email: reg.email).first_or_create(first_name: reg.first_name, last_name: reg.last_name)
		flash[:notice] = "Success!"

		redirect_to mentor_regs_path
	end

end
