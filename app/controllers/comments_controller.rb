class CommentsController < ApplicationController


  def create
    @comment = Comment.new comment_params
    if !@comment.save
      flash[:message] = @comment.errors.full_messages.first
    end
    redirect_to events_path

  end



  private



    def comment_params
      params.require(:comment).permit(:content,:user_id,:event_id)
    end
end
