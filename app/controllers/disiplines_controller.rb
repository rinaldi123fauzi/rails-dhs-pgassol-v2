class DisiplinesController < ApplicationController
  before_action :set_disipline, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  include DisiplinesHelper
  # GET /disiplines
  # GET /disiplines.json
  def index
    @disiplines = Disipline.all
  end

  # GET /disiplines/1
  # GET /disiplines/1.json
  def show
  end

  # GET /disiplines/new
  def new
    @disipline = Disipline.new
  end

  def new_modalbox
    @disipline = Disipline.new
  end

  # GET /disiplines/1/edit
  def edit
  end

  # POST /disiplines
  # POST /disiplines.json
  def create
    @disipline = Disipline.new(disipline_params)
    respond_to do |format|
      params[:disipline][:logo] ? @disipline.logo = setLogo : ""
      if params[:modalbox].present?
        if @disipline.save
          format.html { redirect_back(fallback_location: root_path, :notice => "Disipline was successfully created.") }
          format.json { render :show, status: :created, location: @disipline }
        else
          format.html { render :new }
          format.json { render json: @disipline.errors, status: :unprocessable_entity }
        end
      else
        if @disipline.save
          format.html { redirect_to @disipline, notice: 'Disipline was successfully created.' }
          format.json { render :show, status: :created, location: @disipline }
        else
          format.html { render :new }
          format.json { render json: @disipline.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /disiplines/1
  # PATCH/PUT /disiplines/1.json
  def update
    respond_to do |format|
      if params[:modalbox].present?
        if @disipline.update(disipline_params)
          params[:disipline][:logo] ? @disipline.update(logo: updateLogo) : ""
          format.html { redirect_back(fallback_location: root_path, :notice => "Disipline was successfully created.") }
          format.json { render :show, status: :ok, location: @disipline }
        else
          format.html { render :edit }
          format.json { render json: @disipline.errors, status: :unprocessable_entity }
        end
      else
        if @disipline.update(disipline_params)
          params[:disipline][:logo] ? @disipline.update(logo: updateLogo) : ""
          format.html { redirect_to @disipline, notice: 'Disipline was successfully updated.' }
          format.json { render :show, status: :ok, location: @disipline }
        else
          format.html { render :edit }
          format.json { render json: @disipline.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /disiplines/1
  # DELETE /disiplines/1.json
  def destroy
    getExistLogo(params[:id])
    @disipline.destroy
    respond_to do |format|
      format.html { redirect_to disiplines_url, notice: 'Disipline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_disipline
    @disipline = Disipline.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def disipline_params
    params.require(:disipline).permit(:name, :category, :logo)
  end
end
