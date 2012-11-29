class MyapplicationController < ApplicationController
  before_filter :userauthorize
  def myapplication
    @myapplication=Applications.where("user_id=?",session[user_id])
  end
  protected
  def userauthorize
    unless User.find_by_id(session[:user_id])&(session[:role]=='user')
      redirect_to home_index_path
    end
  end
end
