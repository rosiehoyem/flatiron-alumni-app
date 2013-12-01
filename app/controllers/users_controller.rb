class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :image_reset]

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
    
  end

	def alumni
		@users = User.all
	end

	def edit
  end

	def update
    respond_to do |format|
      if @user.update(user_update_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = current_user

  end

  def employer
    if current_user.employer == false
      redirect_to root
    end  
  end  

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

  def simple_search

  end

  def name_search
    @users = User.search(params[:search])
  end

  def image_reset
    @user.remove_attachment!
    @user.save
    redirect_to edit_user_path
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

  def user_update_params
    params.require(:user).permit(:email, :attachment, :profile_image, :name, :current_employer, :location, :linkedin, :blog_url, :blog_name, :firstname, :lastname, :bio)
  end

end
