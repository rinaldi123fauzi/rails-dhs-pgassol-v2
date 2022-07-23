class UserActivitiesController < ApplicationController
  before_action :set_user_activity, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  # GET /user_activities
  # GET /user_activities.json
  def index
    respond_to do |format|
      format.html
      # you can pass the view_context if you want to use helper methods\
      # @coba = "rinaldi.fauzi"
      # for parsing params from outside
      # format.json {render json: LogActivitiesDatatable.new(view_context, {coba: @coba})}
      #------------END---------------------
      format.json {render json: UserActivitiesIndex.new(view_context)}
    end
  end

  # GET /user_activities/1
  # GET /user_activities/1.json
  def show
  end

  # GET /user_activities/new
  def new
    @user_activity = UserActivity.new
  end

  # GET /user_activities/1/edit
  def edit
  end

  # POST /user_activities
  # POST /user_activities.json
  def create
    @user_activity = UserActivity.new(user_activity_params)

    respond_to do |format|
      if @user_activity.save
        format.html { redirect_to @user_activity, notice: 'User activity was successfully created.' }
        format.json { render :show, status: :created, location: @user_activity }
      else
        format.html { render :new }
        format.json { render json: @user_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_activities/1
  # PATCH/PUT /user_activities/1.json
  def update
    respond_to do |format|
      if @user_activity.update(user_activity_params)
        format.html { redirect_to @user_activity, notice: 'User activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_activity }
      else
        format.html { render :edit }
        format.json { render json: @user_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_activities/1
  # DELETE /user_activities/1.json
  def destroy
    @user_activity.destroy
    respond_to do |format|
      format.html { redirect_to user_activities_url, notice: 'User activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_activity
      @user_activity = UserActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_activity_params
      params.require(:user_activity).permit(:user_name, :role, :date, :description, :controller, :action, :browser, :ip_address)
    end
end
