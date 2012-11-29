class SessionController < ApplicationController

  def new
  end

  def create
    if user = User.authenticate(params[:name],params[:password])
      session[:user_id]=user.id
      session[:role]=user.role
      redirect_to home_index_path
    else
      redirect_to login_rul,:alert=>"Invalid user/password combination"
    end
  end
  
  def destroy
    session[:user_id]=nil
  end
end
