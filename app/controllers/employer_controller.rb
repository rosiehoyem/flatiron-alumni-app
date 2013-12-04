class EmployerController < ApplicationController

  
  def index
    @users = User.where(:employer => false)
  end  

  def edit
    @emp = User.find(params[:id])
  end

  def show
    @emp = User.find(params[:id])
  end

  def update
    emp = User.find(params[:id])
    emp.update(user_params)
    redirect_to employer_path
  end  

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :firstname, :lastname, :company)
    end

end