class DetailItemsController < ApplicationController
  before_action :set_detail_item, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  # GET /detail_items
  # GET /detail_items.json
  def index
    @detail_items = DetailItem.all
  end

  # GET /detail_items/1
  # GET /detail_items/1.json
  def show
  end

  # GET /detail_items/new
  def new
    @detail_item = DetailItem.new
  end

  # GET /detail_items/1/edit
  def edit
  end

  # POST /detail_items
  # POST /detail_items.json
  def create
    @detail_item = DetailItem.new(detail_item_params)

    respond_to do |format|
      if @detail_item.save
        format.html { redirect_to @detail_item, notice: 'Detail item was successfully created.' }
        format.json { render :show, status: :created, location: @detail_item }
      else
        format.html { render :new }
        format.json { render json: @detail_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_items/1
  # PATCH/PUT /detail_items/1.json
  def update
    respond_to do |format|
      if @detail_item.update(detail_item_params)
        format.html { redirect_to @detail_item, notice: 'Detail item was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail_item }
      else
        format.html { render :edit }
        format.json { render json: @detail_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_items/1
  # DELETE /detail_items/1.json
  def destroy
    @detail_item.destroy
    respond_to do |format|
      format.html { redirect_to detail_items_url, notice: 'Detail item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_item
      @detail_item = DetailItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_item_params
      params.require(:detail_item).permit(:item_id,:unit_id, :dimension2, :dimension3, :dft, :vol_solid, :spreading_rate)
    end
end
