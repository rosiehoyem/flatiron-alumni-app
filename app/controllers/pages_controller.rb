class PagesController < ApplicationController

  def dashboard
  	@projects = Project.last(3)
    @students = User.where(role: 'alumnus').take(4)
  end

  def welcome
  end

  def search
  	@users = User.search(params[:search])
  end

  def calendar
  end
end
