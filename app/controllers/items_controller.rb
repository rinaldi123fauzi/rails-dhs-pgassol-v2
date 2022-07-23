class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  # GET /items
  # GET /items.json
  #
  def getDataTemplate
    send_file 'lib/templatesDataItems/templateItems.xlsx', :type => "application/xlsx", :x_sendfile => true
  end

  def import

  end

  def index
    respond_to do |format|
      format.html
      # you can pass the view_context if you want to use helper methods\
      # @coba = "rinaldi.fauzi"
      # for parsing params from outside
      # format.json {render json: LogActivitiesDatatable.new(view_context, {coba: @coba})}
      #------------END---------------------
      format.json {render json: ItemsIndex.new(view_context)}
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @items = Item.left_outer_joins(:brand,:disipline,:type,:product,:vendor).where('items.id = ?', params[:id]).select('*, vendors.name AS namevendors, disiplines.name AS namedisiplines')
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      @getDisipline = Disipline.find(params[:item][:disipline_id])
      @getBrand = Brand.find(params[:item][:brand_id])
      @getType = Type.find(params[:item][:type_id])

      @arrayData = []
      @arrayData = {
          'Disipline : ' => @getDisipline ? @getDisipline.name : "",
          'Brand : ' => @getBrand ? @getBrand.name_brand : "",
          'Type : ' => @getType ? @getType.name_type : "",
          'General Spec : ' => params[:item][:general_spec]
      }
      setLogActivity("Input data with list : " + @arrayData.to_s)
      if @item.save
        @items = Item.last
        format.html { redirect_to new2_price_items_path(@items.id), notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @getItemChange = Item.find(params[:id])
    @getItemChange.general_spec = params[:item][:general_spec]
    setLogActivity("Item changed : " + "#{@getItemChange.changes}")
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(:date,:project_name,:delivery_time,:incoterm,:vat,:term_payment,:price,:currency_id, :vendor_id, :country_id, :unit_id, :product_id, :type_id, :brand_id, :disipline_id, :size, :class_item, :dimension, :general_spec, :scope_of_supply, :others, :note, :delivery_point)
  end
end
