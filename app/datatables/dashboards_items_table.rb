class DashboardsItemsTable
  delegate :params, :link_to, :items_show_dashboard_index_path, :edit_item_path, :item_path, :check_box_tag, :number_to_currency, to: :@view

# constructor
  def initialize(view)
    @view = view
# @coba = parsing //for get params from outside form
  end

  def as_json(options = {})
    {
        sEcho: params[:sEcho].to_i,
        iTotalRecords: Item.count,
        iTotalDisplayRecords: log_activities.total_entries,
        aaData: data
    }
  end

  private

  def data
    log_activities.each_with_index.map do |log_activity, index|
      @lastPrice = PriceItem.left_outer_joins(:currency).where(item_id: log_activity.iditems).select('*').order('price_items.date DESC').limit(1)
      [
          (index + 1),
          (log_activity.product_name),
          (log_activity.name_type),
          (log_activity.name_brand),
          (log_activity.size),
          (log_activity.general_spec),
          (log_activity.namevendors),
          (number_to_currency(@lastPrice.first.price.to_s, :unit => "(#{@lastPrice.first.current_name.to_s}) ")),
          link_to('', items_show_dashboard_index_path(log_activity.iditems), class: 'fa fa-eye btn btn-sm btn-success', title: "Detail"),
          link_to('', edit_item_path(log_activity.iditems), class: 'fa fa-pencil btn btn-sm btn-warning', title: "Edit"),
          link_to('', item_path(log_activity.iditems), method: :delete, data: {confirm: 'Are you sure?'}, class: 'fa fa-trash btn btn-sm btn-danger', title: "Delete"),
# link_to('Show', log_activity),
# link_to('Show', log_activity)
          (check_box_tag "blog_posts[]", log_activity.iditems)
      ]
    end
  end

  def log_activities
    @log_activities ||= fetch_log_activities
  end

  def fetch_log_activities
    log_activities = Item.left_outer_joins(:brand,:disipline,:type,:product,:vendor).where(disipline_id: params[:disipline_id]).select('*, items.id AS iditems, vendors.name AS namevendors, disiplines.name AS namedisiplines').order("#{sort_column} #{sort_direction}, brands.name_brand")
    log_activities = log_activities.paginate(page: page, per_page: per_page)
    if params[:sSearch].present?
      log_activities = log_activities.where("general_spec like :search or brands.name_brand like :search or products.product_name like :search", search: "%#{params[:sSearch].titleize}%")
    end
    log_activities
  end

  def page
    params[:iDisplayStart].to_i / per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[product_name name_type name_brand namedisiplines general_spec namevendors price]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] = "desc" ? "desc" : "asc"
  end
end