class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all

    render("photos/index.html.erb")
  end

  def new_form

    render("photos/new.html.erb")
  end

  def create_row

    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    render("/create_photo.html.erb")
  end

def destroy

  @id = params[:id]
  p = Photo.find(@id)
  p.destroy

    redirect_to("http://localhost:3000/photos")
end

  def show

    @id = params[:id]
    @photos = Photo.find(@id).source
    @caption = Photo.find(@id).caption

    render("photos/show.html.erb")
  end

end
