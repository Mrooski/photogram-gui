class PhotosController < ApplicationController
  def index
    @photo_list = Photo.all.order({:updated_at => :desc})
    render({:template => "photo_templates/index"})    
  end

  def details
    photo_id = params.fetch("id")

    @photo = Photo.where({:id => photo_id}).at(0)

    render({:template => "photo_templates/details"})
  end

  def create
    new_photo = Photo.create
    new_photo.caption = params.fetch("input_caption")
    new_photo.image = params.fetch("input_image")
    new_photo.owner_id = params.fetch("input_owner_id")
    new_photo.save
    
    if !new_photo.id.nil?
      redirect_to("/photos/"+new_photo.id.to_s)
    else
      redirect_to("/photos")
    end

  end

  def delete
    photo_id = params.fetch("id")
    photo_to_delete = Photo.where({:id => photo_id}).at(0)
    photo_to_delete.delete

    redirect_to("/photos")
  end

end
