class SearchesController < ApplicationController
	def new
	  @search = Search.new
	end

	def create
	  @search = Search.create!(search_params)
	  redirect_to @search
	end

	def show
	  @search = Search.find(params[:id])
	end

	private
  # Never trust parameters from the scary internet, only allow the white list through.
  def search_params
    params.require(:search).permit(:search, :users, :id, :name, :for_hire, :location, :skills, :experience)
  end
end
