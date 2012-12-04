class UsersController < ApplicationController
  # GET /users
  # GET /users.json
 
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # POST /users
  # POST /users.json
  def create
    params[:user][:role]='user'
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        session[:user_id]=@user.id
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
