class SummariesController < ApplicationController
  def new
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts
    @summary = Summary.new
    authorize @summary
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts
    @summary = Summary.new
    authorize @summary
    if @summary.save
      flash[:notice] = "Your post summary was saved."
      redirect_to [@topic, @post]
    else
      flash[:error] = "Sorry. There was an error saving your summary. Please try again."
      render :new
    end
  end

  def show
    @summary = Summary.find(params[:id])
    @post = Post.find(params[:post_id])
    @topic = Topic.find(params[:topic_id])
    authorize @summary
  end

  def edit
  end
end
