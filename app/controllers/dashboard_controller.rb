# Dashboard section
class DashboardController < ApplicationController
  include DashboardHelper

  def items_show
    @items = Item.left_outer_joins(:brand,:disipline,:type,:product,:vendor).where('items.id = ?', params[:id]).select("*, items.id AS iditems, vendors.name AS namevendors, disiplines.name AS namedisiplines").order('brands.name_brand ASC')
    @priceItems = PriceItem.left_outer_joins(:vendor,:currency).where(item_id: params[:id]).select('*, vendors.name AS namevendors, price_items.id AS idpriceitems')
    @vendorPrice = PriceItem.left_outer_joins(:vendor,:currency).where(item_id: params[:id]).select('*, vendors.name AS namevendors, price_items.id AS idpriceitems').order('price_items.date DESC').limit(1)
  end

  def items_table
    @getDisipline = getDisiplineItemsTable
    respond_to do |format|
      format.html
      # you can pass the view_context if you want to use helper methods\
      # @coba = "rinaldi.fauzi"
      # for parsing params from outside
      # format.json {render json: LogActivitiesDatatable.new(view_context, {coba: @coba})}
      #------------END---------------------
      format.json {render json: DashboardsItemsTable.new(view_context)}
    end
  end

  def items_search
    @items = Item.left_outer_joins(:brand,:disipline,:type,:product,:vendor).where('general_spec LIKE ? or general_spec LIKE ?', "%#{params[:param].titleize}%", "%#{params[:param].downcase}%").select("*, items.id AS iditems, vendors.name AS namevendors, disiplines.name AS namedisiplines").order('brands.name_brand')
  end

  def getItemsData
    respond_to do |format|
      format.html
      # you can pass the view_context if you want to use helper methods\
      # @coba = "rinaldi.fauzi"
      # for parsing params from outside
      # format.json {render json: LogActivitiesDatatable.new(view_context, {coba: @coba})}
      #------------END---------------------
      format.json {render json: DashboardDataBasetype.new(view_context)}
    end
  end

  def items_home

  end

  def analytics
  end
end
