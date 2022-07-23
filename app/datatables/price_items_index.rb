class PriceItemsIndex
  delegate :params, :link_to, :edit_price_item_path, :price_item_path, :number_to_currency, to: :@view

# constructor
  def initialize(view)
    @view = view
# @coba = parsing //for get params from outside form
  end

  def as_json(options = {})
    {
        sEcho: params[:sEcho].to_i,
        iTotalRecords: PriceItem.count,
        iTotalDisplayRecords: log_activities.total_entries,
        aaData: data
    }
  end

  private

  def data
    log_activities.each_with_index.map do |log_activity, index|
      [
          (index + 1),
          (log_activity.project_name),
          (log_activity.incoterm),
          (log_activity.date),
          (log_activity.vat),
          (log_activity.term_payment),
          (log_activity.delivery_time),
          (number_to_currency(log_activity.price, :unit => "(#{log_activity.current_name}) ")),
          (log_activity.status),
          (log_activity.note),
          (log_activity.last),
          link_to('', price_item_path(log_activity.idpriceitems), class: 'fa fa-eye btn btn-sm btn-success', title: "Detail"),
          link_to('', edit_price_item_path(log_activity.idpriceitems), class: 'fa fa-pencil btn btn-sm btn-warning', title: "Edit"),
          link_to('', price_item_path(log_activity.idpriceitems), method: :delete, data: {confirm: 'Are you sure?'}, class: 'fa fa-trash btn btn-sm btn-danger', title: "Delete")
          # link_to('Show', log_activity),
          # link_to('Show', log_activity)
      ]
    end
  end

  def log_activities
    @log_activities ||= fetch_log_activities
  end

  def fetch_log_activities
    log_activities = PriceItem.left_outer_joins(:currency).select('*, price_items.id AS idpriceitems').order("date DESC, #{sort_column} #{sort_direction}")
    log_activities = log_activities.paginate(page: page, per_page: per_page)
    if params[:sSearch].present?
      log_activities = log_activities.where("project_name like :search or incoterm like :search or vat like :search or term_payment like :search or price like :search", search: "%#{params[:sSearch].titleize}%")
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
    columns = %w[project_name incoterm date vat term_payment delivery_time price status note last]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] = "desc" ? "desc" : "asc"
  end
end