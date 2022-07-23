class IndonesiaProvincesController < ApplicationController
  before_action :set_indonesia_province, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  # GET /indonesia_provinces
  # GET /indonesia_provinces.json
  def index
    @indonesia_provinces = IndonesiaProvince.all
  end

  # GET /indonesia_provinces/1
  # GET /indonesia_provinces/1.json
  def show
  end

  # GET /indonesia_provinces/new
  def new
    @indonesia_province = IndonesiaProvince.new
  end

  # GET /indonesia_provinces/1/edit
  def edit
  end

  # POST /indonesia_provinces
  # POST /indonesia_provinces.json
  def create
    @indonesia_province = IndonesiaProvince.new(indonesia_province_params)

    respond_to do |format|
      if @indonesia_province.save
        format.html { redirect_to @indonesia_province, notice: 'Indonesia province was successfully created.' }
        format.json { render :show, status: :created, location: @indonesia_province }
      else
        format.html { render :new }
        format.json { render json: @indonesia_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indonesia_provinces/1
  # PATCH/PUT /indonesia_provinces/1.json
  def update
    respond_to do |format|
      if @indonesia_province.update(indonesia_province_params)
        format.html { redirect_to @indonesia_province, notice: 'Indonesia province was successfully updated.' }
        format.json { render :show, status: :ok, location: @indonesia_province }
      else
        format.html { render :edit }
        format.json { render json: @indonesia_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indonesia_provinces/1
  # DELETE /indonesia_provinces/1.json
  def destroy
    @indonesia_province.destroy
    respond_to do |format|
      format.html { redirect_to indonesia_provinces_url, notice: 'Indonesia province was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indonesia_province
      @indonesia_province = IndonesiaProvince.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indonesia_province_params
      params.require(:indonesia_province).permit(:name)
    end
end
