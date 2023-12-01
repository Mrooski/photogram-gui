class PhotosController < ApplicationController
  def index
    @photo_list = Photo.all.order({:updated_at => :asc})
    render({:template => "photo_templates/index"})    
  end

  def details
    photo_id = params.fetch("id")

    @photo = Photo.where({:id => photo_id}).at(0)

    render({:template => "photo_templates/details"})
  end

end
