# :nodoc:
class ApplicationController < ActionController::Base
  before_action :verify_authenticity_token
  protect_from_forgery unless: -> { request.format.json? }
  before_action :authenticate_user!

  include ApplicationHelper

  rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_path, alert: 'Access Denied'
  end

  # You want to get exceptions in development, but not in production.
  unless Rails.application.config.consider_all_requests_local
    rescue_from ActionController::RoutingError, with: -> { render_404 }
  end
  rescue_from AbstractController::ActionNotFound, with: -> { render_404 }

  private
  def render_404
    respond_to do |format|
      format.html { render template: 'errors/error_404', status: 404 }
      format.all { render nothing: true, status: 404 }
    end
  end
end
