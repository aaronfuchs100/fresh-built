class UsersController < ApplicationController

	def index
		@users = User.all
		@africa = User.filter("Africa")
		@asia = User.filter("Asia")
		@america = User.filter("America")
		@latin_america = User.filter("Latin America")
		@europe = User.filter("Europe")

		@regions = @users.group_by(&:region)

	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			redirect_to users_path
		else
			render :new
		end
	end

	def show
		user_id = params[:id]
		@user = User.find(user_id)
		render :show , layout: false
	end

	def edit
		user_id = params[:id]
		@user = User.find(user_id)
	end

	def update
		@user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to users_path
    else
      render :edit
    end
	end

end





