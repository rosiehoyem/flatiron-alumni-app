class PagesController < ApplicationController
  layout false

  def dashboard
  	@projects = Project.last(3)
    render layout: "application"
  end

  def welcome
  end

  def search
    render layout: "application"
  	@users = User.search(params[:search])
  end

  def calendar
    render layout: "application"
  end
end
