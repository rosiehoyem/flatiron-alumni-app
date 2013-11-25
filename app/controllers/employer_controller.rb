class EmployerController < ApplicationController
layout false
  
  def index
    @users = User.where(:employer => false)
  end  

end
