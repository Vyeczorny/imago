class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user = current_user
    if @photo.save
      flash[:notice] = "Successfully created product."
      redirect_to user_path(@photo.user)
    else
      render :action => 'new'
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private 

  def photo_params
    params.require(:photo).permit(:title, :description, :photo)
  end

end
