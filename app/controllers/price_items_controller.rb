class PriceItemsController < ApplicationController
  before_action :set_price_item, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  # GET /price_items
  # GET /price_items.json
  def index
    # @price_items = PriceItem.left_outer_joins(:currency).select('price_items.id AS idpriceitems, *')
    respond_to do |format|
      format.html
      # you can pass the view_context if you want to use helper methods\
      # @coba = "rinaldi.fauzi"
      # for parsing params from outside
      # format.json {render json: LogActivitiesDatatable.new(view_context, {coba: @coba})}
      #------------END---------------------
      format.json {render json: PriceItemsIndex.new(view_context)}
    end
  end

  # GET /price_items/1
  # GET /price_items/1.json
  def show
    @getPriceItem = PriceItem.left_outer_joins(:price_letter,
                                               :referensi_item,
                                               :country,:vendor,
                                               :currency,:item).
                                                where('price_items.id = ?', params[:id]).
                                                select('*, referensi_items.name AS namereferensi_items, vendors.name AS namevendors')
  end

  # GET /price_items/new
  def new
    @price_item = PriceItem.new
  end

  def new2
    @price_item = PriceItem.new
  end

  # GET /price_items/1/edit
  def edit
  end

  # POST /price_items
  # POST /price_items.json
  def create
    @price_item = PriceItem.new(price_item_params)

    respond_to do |format|
      @price_item.last = 1
      @price_item.status = 1
      if @price_item.save
        if params[:form2].present?
          @getItem = PriceItem.last

          @getGeneralSpec = Item.find(@getItem.item_id)
          @getCurrency = Currency.find(params[:price_item][:currency_id])
          @getVendor = Vendor.find(params[:price_item][:vendor_id])
          @getCountry = Country.find(params[:price_item][:country_id])

          @arrayData = []
          @arrayData = {
              'Items : ' => @getGeneralSpec.general_spec,
              'Currency : ' => @getCurrency ? @getCurrency.current_name : "",
              'vendor : ' => @getVendor ? @getVendor.name : "",
              'Country : ' => @getCountry ? @getCountry.country_name : "",
              'Project Name : ' => params[:price_item][:project_name],
              'Date : ' => params[:price_item][:date],
              'Vat : ' => params[:price_item][:vat],
              'Price : ' => params[:price_item][:price]
          }
          setLogActivity("Input data with list : " + @arrayData.to_s)
          format.html { redirect_to items_show_dashboard_index_path(@getItem.item_id), notice: 'Price item was successfully created.' }
          format.json { render :show, status: :created, location: @price_item }
        else
          @getItem = Item.find(params[:price_item][:item_id])
          @getCurrency = Currency.find(params[:price_item][:currency_id])
          @getVendor = Vendor.find(params[:price_item][:vendor_id])
          @getCountry = Country.find(params[:price_item][:country_id])

          @arrayData = []
          @arrayData = {
              'Items : ' => @getItem ? @getItem.general_spec : "",
              'Currency : ' => @getCurrency ? @getCurrency.current_name : "",
              'vendor : ' => @getVendor ? @getVendor.name : "",
              'Country : ' => @getCountry ? @getCountry.country_name : "",
              'Project Name : ' => params[:price_item][:project_name],
              'Date : ' => params[:price_item][:date],
              'Vat : ' => params[:price_item][:vat],
              'Price : ' => params[:price_item][:price]
          }
          setLogActivity("Input data with list : " + @arrayData.to_s)

          format.html { redirect_to items_show_dashboard_index_path(params[:price_item][:item_id]), notice: 'Price item was successfully created.' }
          format.json { render :show, status: :created, location: @price_item }
        end
      else
        format.html { render :new }
        format.json { render json: @price_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_items/1
  # PATCH/PUT /price_items/1.json
  def update
    respond_to do |format|
      if params[:form2].present?
        if @price_item.update(price_item_params)
          format.html { redirect_to items_show_dashboard_index_path(params[:price_item][:item_id]), notice: 'Price item was successfully updated.' }
          format.json { render :show, status: :ok, location: @price_item }
        else
          format.html { render :edit }
          format.json { render json: @price_item.errors, status: :unprocessable_entity }
        end
      else
        if @price_item.update(price_item_params)
          format.html { redirect_to @price_item, notice: 'Price item was successfully updated.' }
          format.json { render :show, status: :ok, location: @price_item }
        else
          format.html { render :edit }
          format.json { render json: @price_item.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /price_items/1
  # DELETE /price_items/1.json
  def destroy
    @price_item.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path, :notice => "Price has deleted")}
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_price_item
    @price_item = PriceItem.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def price_item_params
    params.require(:price_item).permit(:item_id, :currency_id, :vendor_id, :country_id, :referensi_item_id, :price_letter_id, :place, :project_name, :incoterm, :date, :vat, :term_payment, :delivery_time, :price, :status, :note, :last)
  end
end
