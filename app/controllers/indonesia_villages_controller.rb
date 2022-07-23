class IndonesiaVillagesController < ApplicationController
  before_action :set_indonesia_village, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  # GET /indonesia_villages
  # GET /indonesia_villages.json
  def index
    @indonesia_villages = IndonesiaVillage.all
  end

  # GET /indonesia_villages/1
  # GET /indonesia_villages/1.json
  def show
  end

  # GET /indonesia_villages/new
  def new
    @indonesia_village = IndonesiaVillage.new
  end

  # GET /indonesia_villages/1/edit
  def edit
  end

  # POST /indonesia_villages
  # POST /indonesia_villages.json
  def create
    @indonesia_village = IndonesiaVillage.new(indonesia_village_params)

    respond_to do |format|
      if @indonesia_village.save
        format.html { redirect_to @indonesia_village, notice: 'Indonesia village was successfully created.' }
        format.json { render :show, status: :created, location: @indonesia_village }
      else
        format.html { render :new }
        format.json { render json: @indonesia_village.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indonesia_villages/1
  # PATCH/PUT /indonesia_villages/1.json
  def update
    respond_to do |format|
      if @indonesia_village.update(indonesia_village_params)
        format.html { redirect_to @indonesia_village, notice: 'Indonesia village was successfully updated.' }
        format.json { render :show, status: :ok, location: @indonesia_village }
      else
        format.html { render :edit }
        format.json { render json: @indonesia_village.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indonesia_villages/1
  # DELETE /indonesia_villages/1.json
  def destroy
    @indonesia_village.destroy
    respond_to do |format|
      format.html { redirect_to indonesia_villages_url, notice: 'Indonesia village was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indonesia_village
      @indonesia_village = IndonesiaVillage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indonesia_village_params
      params.require(:indonesia_village).permit(:district_id, :name)
    end
end
