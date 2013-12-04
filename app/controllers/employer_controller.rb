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
    @emp = User.find(params[:id])

    respond_to do |format|
      if @emp.update(user_params)
        format.html { redirect_to show_employer_profile_path(@emp), notice: 'Employer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @emp.errors, status: :unprocessable_entity }
      end
    end
  end  


  
private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :firstname, :lastname, :company)
  end

end