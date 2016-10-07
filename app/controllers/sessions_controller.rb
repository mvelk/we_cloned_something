class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_credentials(session_params[:username], session_params[:password])

    if @user
      login(@user)
      redirect_to users_url
    else
      render :new
    end
  end

  def destroy
    logout!
    redirect_to new_user_url
  end

  private

  def session_params
    params.require(:user).permit(:username, :password)
  end
end
