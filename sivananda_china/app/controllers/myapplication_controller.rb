class MyapplicationController < ApplicationController
 # before_filter :userauthorize
  def myapplication
    @myapplication=Applications.where("user_id=?",session[user_id])
  end
  def applicate
    @application = Application.new
  end
  def new
    params[:application][:user_id]=session[user_id]
    params[:application][:status]='unpaid'
    if params[:application][:course]="ttc"
      params[:application][:tuition]=1000
    end
    if params[:application][:course]="holidaycourse"
      params[:application][:tuition]=100
    end
    @application = Application.new(params[:application])
  end
  protected
  def userauthorize
    unless User.find_by_id(session[:user_id])&(session[:role]=='user')
      redirect_to home_index_path
    end
  end

end
