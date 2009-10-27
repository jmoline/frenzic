class PhotoGalleriesController < ApplicationController
  def new
    @photo_gallery = PhotoGallery.new
  end
  
  def create
    @photo_gallery = PhotoGallery.new(params[:photo_gallery])
    if @photo_gallery.save
      flash[:notice] = "Successfully created photo gallery."
      redirect_to @photo_gallery
    else
      render :action => 'new'
    end
  end
  
  def edit
    @photo_gallery = PhotoGallery.find(params[:id])
  end
  
  def update
    @photo_gallery = PhotoGallery.find(params[:id])
    if @photo_gallery.update_attributes(params[:photo_gallery])
      flash[:notice] = "Successfully updated photo gallery."
      redirect_to @photo_gallery
    else
      render :action => 'edit'
    end
  end
  
  def index
    @photo_galleries = PhotoGallery.all
  end
  
  def show
    @photo_gallery = PhotoGallery.find(params[:id])
  end
end
