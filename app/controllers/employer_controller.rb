class EmployerController < ApplicationController
layout false
  
  def index
    @users = User.all
  end  
end
