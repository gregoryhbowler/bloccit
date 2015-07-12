class FavoritesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post)
 
    authorize favorite

    if favorite.save
      flash[:notice] = "You have added this post to your favorites."
      redirect_to [post.topic, @post]
    else
      #Add code to generate a failure flash and redirect to post
      flash[:error] = "There was an error adding this post to your favorites."
      redirect_to [post.topic, @post]
    end
  end

 def destroy
   @post = Post.find(params[:post_id])
   favorite = current_user.favorites.find(params[:id])

   authorize favorite
 
   if favorite.destroy
     flash[:notice] = "Removed from your favorites."
     redirect_to [@post.topic, @post]

   else
     flash[:error] = "Unable to remove favorite. Please try again."
     redirect_to [@post.topic, @post]
   end
 end


end


