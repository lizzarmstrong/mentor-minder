class MentorRegsController < ApplicationController
	skip_before_action :authenticate_user!, only: [:new, :create, :thanks]
	before_action :set_mentor_reg, only: [:destroy]

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

	def new
		@mentor_reg = MentorReg.new
	end

	def create
		if MentorReg.create(mentor_reg_params)
			redirect_to thanks_mentor_regs_path, notice: "Application was successful"
		else
			redirect_to thanks_mentor_regs_path, notice: "Application Failed"
		end
	end

	def thanks

	end

	def destroy
		@mentor_reg.destroy
		redirect_to mentor_regs_path
	end

	private

	def set_mentor_reg
		@mentor_reg = MentorReg.find(params[:id])
	end
	def mentor_reg_params
		params.require(:mentor_reg).permit(
					:first_name,
					:last_name,
					:email,
					:gender,
					:first_aid_certified,
					:phone,
					:city,
					:website,
					:twitter,
					:linkedin,
					:work,
					:job,
					:bio,
					:why_involved,
					:emergency_contact,
					:references,
					:permission_to_contact_references
					)
	end


end
