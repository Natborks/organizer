class UsersController < ApplicationController
	before_action :require_user, only: [:index, :show]
	
	def index
		@user = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save 
			redirect_to '/static_pages/thanks'
		else
			render 'new'
		end

	end

	def show
		@user = User.find(params[:id])
	end

private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :gender, :student_id_number,
				:email, :phone, :level, :about_you, :terms, :reason, :area_interest)
	end
end
