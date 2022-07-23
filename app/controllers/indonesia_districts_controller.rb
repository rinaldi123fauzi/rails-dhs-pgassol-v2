class IndonesiaDistrictsController < ApplicationController
  before_action :set_indonesia_district, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  # GET /indonesia_districts
  # GET /indonesia_districts.json
  def index
    @indonesia_districts = IndonesiaDistrict.all
  end

  # GET /indonesia_districts/1
  # GET /indonesia_districts/1.json
  def show
  end

  # GET /indonesia_districts/new
  def new
    @indonesia_district = IndonesiaDistrict.new
  end

  # GET /indonesia_districts/1/edit
  def edit
  end

  # POST /indonesia_districts
  # POST /indonesia_districts.json
  def create
    @indonesia_district = IndonesiaDistrict.new(indonesia_district_params)

    respond_to do |format|
      if @indonesia_district.save
        format.html { redirect_to @indonesia_district, notice: 'Indonesia district was successfully created.' }
        format.json { render :show, status: :created, location: @indonesia_district }
      else
        format.html { render :new }
        format.json { render json: @indonesia_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indonesia_districts/1
  # PATCH/PUT /indonesia_districts/1.json
  def update
    respond_to do |format|
      if @indonesia_district.update(indonesia_district_params)
        format.html { redirect_to @indonesia_district, notice: 'Indonesia district was successfully updated.' }
        format.json { render :show, status: :ok, location: @indonesia_district }
      else
        format.html { render :edit }
        format.json { render json: @indonesia_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indonesia_districts/1
  # DELETE /indonesia_districts/1.json
  def destroy
    @indonesia_district.destroy
    respond_to do |format|
      format.html { redirect_to indonesia_districts_url, notice: 'Indonesia district was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indonesia_district
      @indonesia_district = IndonesiaDistrict.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indonesia_district_params
      params.require(:indonesia_district).permit(:city_id, :name)
    end
end
