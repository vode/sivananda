class SessionController < ApplicationController

  def new
  end

  def create
    if user = User.authenticate(params[:name],params[:password])
      session[:user_id]=user.id
      session[:role]=user.role
      redirect_to home_index_path
    else
      redirect_to tips_tips_path(:tips=>'用户名或密码错误')
    end
  end
  
  def destroy
    session[:user_id]=nil
  end
end
