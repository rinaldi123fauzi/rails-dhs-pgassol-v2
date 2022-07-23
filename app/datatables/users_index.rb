class UsersIndex
  delegate :params, :link_to, :edit_user_path, :user_path, to: :@view

# constructor
  def initialize(view)
    @view = view
# @coba = parsing //for get params from outside form
  end

  def as_json(options = {})
    {
        sEcho: params[:sEcho].to_i,
        iTotalRecords: User.count,
        iTotalDisplayRecords: log_activities.total_entries,
        aaData: data
    }
  end

  private

  def data
    log_activities.each_with_index.map do |user, index|
      [
          (index + 1),
          (user.name),
          (user.username),
          (user.current_sign_in_at),
          (user.last_sign_in_at),
          (user.role_assignments.each_with_index.map { |role_assignment| "#{role_assignment.role.try(:name)}" }.join(", ")),
          link_to('', edit_user_path(user), class: 'fa fa-pencil btn btn-sm btn-warning', title: "Edit"),
          link_to('', user_path(user), method: :delete, data: {confirm: 'Are you sure?'}, class: 'fa fa-trash btn btn-sm btn-danger', title: "Delete")
# link_to('Show', log_activity),
# link_to('Show', log_activity)
      ]
    end
  end

  def log_activities
    @log_activities ||= fetch_log_activities
  end

  def fetch_log_activities
    log_activities = User.all().order("current_sign_in_at DESC, #{sort_column} #{sort_direction}")
    log_activities = log_activities.paginate(page: page, per_page: per_page)
    if params[:sSearch].present?
      log_activities = log_activities.where("name like :search or name like :searching", search: "#{params[:sSearch].titleize}%", searching: "#{params[:sSearch].upcase}%")
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
    columns = %w[name username current_sign_in_at last_sign_in_at role_assignments]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] = "desc" ? "desc" : "asc"
  end
end