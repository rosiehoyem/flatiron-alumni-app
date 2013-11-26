class RepliesController < ApplicationController
  def new
    @forum = Forum.find(params[:fid])
    @user = current_user
    @reply = Reply.new
  end  

    def create
    reply = Reply.create(reply_params)
    redirect_to forum_path(reply.forum_id)
    end  
end


 private
  

    # Never trust parameters from the scary internet, only allow the white list through.
    def reply_params
      params[:reply].permit(:content, :user_id, :forum_id)
    end