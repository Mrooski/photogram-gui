class PhotosController < ApplicationController
  def index
    @photo_list = Photo.all.order({:updated_at => :asc})
    render({:template => "photo_templates/index"})
    
  end


end
