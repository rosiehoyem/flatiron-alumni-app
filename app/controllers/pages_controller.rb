class PagesController < ApplicationController

  def dashboard
  	@projects = Project.last(3)
    @users = User.where(role: 'Alumnus').last(4)
  end

  def welcome
  end

  def search
  	@users = User.search(params[:search])
  end

  def calendar
  end
end
