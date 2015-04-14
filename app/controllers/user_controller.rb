class ArtistsController < ApplicationController
before_action :find_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = user.all
  end

  def show
  end

  def new
    @user = user.new
  end

  def create
    @user = user.new(user_params)
    if @user.save
    redirect_to @user
  else
    render :new
  end
end

def edit

end

def update
  @user.update(user_params)
  redirect_to @user
end

def destroy
  @user.destroy
  redirect_to users_path
end


private



def user_params
  params.require(:entry).permit(:user, :photo_url, :comment)

  end

  def find_entry
    @entry = Entry. find(params[:id])
end
