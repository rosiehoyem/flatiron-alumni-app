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

    
  def edit
    @reply = Reply.find(params[:id])
  
  end

  def update
    reply = Reply.find(params[:id])
    reply.content = params[:reply][:content]
    reply.save
      redirect_to forum_path(reply.forum_id)
  end    

      



 private
  

    # Never trust parameters from the scary internet, only allow the white list through.
    def reply_params
      params[:reply].permit(:content, :user_id, :forum_id)
    end

end