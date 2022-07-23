class TypesIndex
  delegate :params, :link_to, :edit_type_path, :type_path, to: :@view

# constructor
  def initialize(view)
    @view = view
# @coba = parsing //for get params from outside form
  end

  def as_json(options = {})
    {
        sEcho: params[:sEcho].to_i,
        iTotalRecords: Type.count,
        iTotalDisplayRecords: log_activities.total_entries,
        aaData: data
    }
  end

  private

  def data
    log_activities.each_with_index.map do |log_activity, index|
      [
          (index + 1),
          (log_activity.namedisiplines),
          (log_activity.product_name),
          (log_activity.name_type),
          link_to('', type_path(log_activity.idtypes), class: 'fa fa-eye btn btn-sm btn-success', title: "Detail"),
          link_to('', edit_type_path(log_activity.idtypes), class: 'fa fa-pencil btn btn-sm btn-warning', title: "Edit"),
          link_to('', type_path(log_activity.idtypes), method: :delete, data: {confirm: 'Are you sure?'}, class: 'fa fa-trash btn btn-sm btn-danger', title: "Delete")
          # link_to('Show', log_activity),
          # link_to('Show', log_activity)
      ]
    end
  end

  def log_activities
    @log_activities ||= fetch_log_activities
  end

  def fetch_log_activities
    log_activities = Type.left_outer_joins(:disipline,:product).select('*, types.id AS idtypes, disiplines.name AS namedisiplines').order("namedisiplines ASC, #{sort_column} #{sort_direction}")
    log_activities = log_activities.paginate(page: page, per_page: per_page)
    if params[:sSearch].present?
      log_activities = log_activities.where("products.product_name like :search or types.name like :search or disiplines.namedisiplines like :search", search: "%#{params[:sSearch].titleize}%")
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
    columns = %w[namedisiplines product_name name_type]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] = "desc" ? "desc" : "asc"
  end
end