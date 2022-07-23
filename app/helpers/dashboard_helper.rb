module DashboardHelper
  def getDisiplineItemsTable
    @getDisipline = Disipline.find(params[:disipline_id])
    return @getDisipline.name
  end

  def getNameProductBasetype
    @getProduct = Item.left_outer_joins(:product).where('items.type_id = ?', params[:type_id]).select('products.product_name')
    return @getProduct.first.product_name.to_s
  end

  def getTotalItemsBaseDisipline(id)
    @countItems = Item.where(disipline_id: id).select('*').count
    if @countItems < 1000
      return @countItems.to_s + " Item"
    else
      return "+1000 Item"
    end
  end
end