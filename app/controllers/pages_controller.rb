class PagesController < ApplicationController
  def dashboard
  end

  def search
  	@users = User.search(params[:search])
  end

  def calendar
  end
end
