class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def new
  	@user = User.new
	end

	def create
	  @user = User.new(user_params)
	  if @user.save
	    session[:user_id] = @user.id
	    redirect_to root_url, notice: "Thank you for signing up!"
	  else
	    render "new"
	  end
	end

	def show
    @user = User.find(params[:id])
  end

	def alumni
		@users = User.all
	end

	def edit
      
  end

	def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

  end

 private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
