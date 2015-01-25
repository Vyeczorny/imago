class CommentsController < ApplicationController
  def create
    @photo = Photo.find(params[:photo_id])
    @comment = Comment.create(comment_params)
    @comment.photo = @photo
    @comment.user = current_user
    @comment.save

    redirect_to photo_path(@photo)
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
