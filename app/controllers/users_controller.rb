class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed Up!"
    else
      render "new"
    end
  end


  private
  if params[:user][:password].blank?
    params[:user].delete(:password)
    params[:user].delete(:password_confirmation)
  end
  def user_params
    params.require(:user).permit(:email,:password,:password_confirmation)
  end

end
