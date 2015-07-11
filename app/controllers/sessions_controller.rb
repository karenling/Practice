class SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if @user
      login_user!(@user)
      flash[:notice] = ['Successfully logged in!']
      redirect_to new_session_url
    else
      flash.now[:errors] = ['Invalid username/password combo.']
      render :new
    end
  end

  def new
  end

  def destroy
    logout_user!
    flash[:notice] = ['Successfully logged out!']
    redirect_to new_session_url
  end
end
