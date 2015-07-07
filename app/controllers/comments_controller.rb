class CommentsController < ApplicationController

  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:post_id])
    @comments = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to [@topic, @post], notice: "Comment saved."
    else
      redirect_to [@topic, @post], notice: "Comment failed to save."
  end
end

private

def comment_params
  params.require(:comment).permit(:body)
end
end
