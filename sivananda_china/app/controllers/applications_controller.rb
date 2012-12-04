class ApplicationsController < ApplicationController
  # GET /applications
  # GET /applications.json
 # before_filter :adminauthorize
  def index
    if session[:role]="admin"
      @applications = Application.all
    end
    if session[:role]="user"
       @application=Applications.where("user_id=?",session[:user_id])
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applications }
    end
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
    @application = Application.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @application }
    end
  end

  # GET /applications/new
  # GET /applications/new.json
  def new
    @application = Application.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @application }
    end
  end

  # GET /applications/1/edit
  def edit
    if session[:role] !='admin'
      redirect_to root_path
    end
    @application = Application.find(params[:id])
  end

  # POST /applications
  # POST /applications.json
  def create
    if session[:role] !='user'
      redirect_to root_path
    end
    params[:application][:user_id]=session[:user_id]
    params[:application][:status]='unpaid'
    if params[:application][:course]=="ttc"
      params[:application][:tuition]=1000
    end
    if params[:application][:course]=="holidaycourse"
      params[:application][:tuition]=100
    end
    @application = Application.new(params[:application])

    respond_to do |format|
      if @application.save
        format.html {redirect_to tips_tips_path(:tips=>('申请成功，您的订单编号是'+@application.id.to_s+'请付款至xxxxxx'))}
        format.json { render json: @application, status: :created, location: @application }
      else
        format.html { render action: "new" }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applications/1
  # PUT /applications/1.json
  def update
    @application = Application.find(params[:id])

    respond_to do |format|
      if @application.update_attributes(params[:application])
        format.html { redirect_to @application, notice: 'Application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applications/1
  # DELETE /applications/1.json
  def destroy
    @application = Application.find(params[:id])
    @application.destroy

    respond_to do |format|
      format.html { redirect_to applications_url }
      format.json { head :no_content }
    end
  end
 # protected
 # def adminauthorize
 #     unless User.find_by_id(session[:user_id])&(session[:role]=='admin')
   #   redirect_to home_index_path
  #  end
 # end
end
