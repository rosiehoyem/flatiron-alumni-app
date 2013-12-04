class MainTopicsController < ApplicationController
before_action :set_main, only: [:show, :edit, :update, :destroy]
 
  def index
    @mains = MainTopic.all
  end

 
  def show

  end

 
  def new
  end

 
  def edit
  end

  
  def create
    main = MainTopic.create(main_params)
    redirect_to forums_path
  end

 
  def update
  
  end

 
  def destroy
 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main
      @main = MainTopics.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_params
      params[:main_topic].permit(:topic)
    end



end
