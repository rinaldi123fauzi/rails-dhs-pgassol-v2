json.extract! user_activity, :id, :user_name, :role, :date, :description, :controller, :action, :browser, :ip_address, :created_at, :updated_at
json.url user_activity_url(user_activity, format: :json)