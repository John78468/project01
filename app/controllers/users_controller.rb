class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    #@user.file.attach(params[:file])
    #if @user.file.attach(params[:file]) == [:file]
    #  return rediect_to 
    #end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:file)
  end

end
