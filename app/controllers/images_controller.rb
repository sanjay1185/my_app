class ImagesController < ApplicationController

  before_filter :find_user

  def index
    @user=User.find(params[:user_id])
   p params
  end
  def new
    @user=User.find(params[:user_id])
    @user.images.new
  end

def create
    @attachable_file =Image.new(params[:image])
    @attachable_file.user=@user
    if @attachable_file.save
      flash[:notice] = 'Attachment was successfully created.'
      redirect_to user_images_url(@user)
    else
      render :action => :new
    end
  end

def show
  @image = Image.find(params[:id])
send_data(@image.db_file.data,
:filename => @image.filename,
:type => @image.content_type,
:disposition => "inline" )
end

def find_user
 @user=User.find(params[:user_id])
end

end
