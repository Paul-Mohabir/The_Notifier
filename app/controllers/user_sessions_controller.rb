class UserSessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:crypted_password], params[:remember_me])
      redirect_back_or_to(root_url, notice: "Logged In!")
    else
      flash.now[:alert] = "Login Failed!"
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: "Logged Out!"
  end
end
