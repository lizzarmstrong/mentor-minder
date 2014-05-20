class MentorRegsController < ApplicationController
	def index
		@mentor_regs = MentorReg.all
	end	

	def process_reg
		if RegConverter.process_reg(params[:id])
			flash[:notice] = "Success!"
		else
			flash[:notice] = "Save failed!"
		end

		redirect_to mentor_regs_path
	end



end
