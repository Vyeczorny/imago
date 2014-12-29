class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user = current_user
    if @photo.save
      flash[:notice] = "Successfully created product."
      redirect_to :action => :new
    else
      render :action => 'new'
    end
  end

  private 

  def photo_params
    params.require(:photo).permit(:title, :description, :photo)
  end

end
