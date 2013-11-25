class PagesController < ApplicationController
  def dashboard
  	@projects = Project.last(3)
  end

  def search
  end

  def calendar
  end
end
