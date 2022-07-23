class ReferensiItemsController < ApplicationController
  before_action :set_referensi_item, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  # GET /referensi_items
  # GET /referensi_items.json
  def index
    @referensi_items = ReferensiItem.all
  end

  # GET /referensi_items/1
  # GET /referensi_items/1.json
  def show
  end

  # GET /referensi_items/new
  def new
    @referensi_item = ReferensiItem.new
  end

  # GET /referensi_items/1/edit
  def edit
  end

  # POST /referensi_items
  # POST /referensi_items.json
  def create
    @referensi_item = ReferensiItem.new(referensi_item_params)

    respond_to do |format|
      if @referensi_item.save
        format.html { redirect_to @referensi_item, notice: 'Referensi item was successfully created.' }
        format.json { render :show, status: :created, location: @referensi_item }
      else
        format.html { render :new }
        format.json { render json: @referensi_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referensi_items/1
  # PATCH/PUT /referensi_items/1.json
  def update
    respond_to do |format|
      if @referensi_item.update(referensi_item_params)
        format.html { redirect_to @referensi_item, notice: 'Referensi item was successfully updated.' }
        format.json { render :show, status: :ok, location: @referensi_item }
      else
        format.html { render :edit }
        format.json { render json: @referensi_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referensi_items/1
  # DELETE /referensi_items/1.json
  def destroy
    @referensi_item.destroy
    respond_to do |format|
      format.html { redirect_to referensi_items_url, notice: 'Referensi item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referensi_item
      @referensi_item = ReferensiItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referensi_item_params
      params.require(:referensi_item).permit(:name)
    end
end
