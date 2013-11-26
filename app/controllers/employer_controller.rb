class EmployerController < ApplicationController

  
  def index
    @users = User.where(:employer => false)
  end  

  def edit
    @emp = User.find(params[:id])
  end

end
