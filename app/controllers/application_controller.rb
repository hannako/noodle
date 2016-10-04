class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protected
  def authenticate_inviter!
    authenticate_admin!(:force => true)
  end

  def after_sign_in_path_for(resource)
    new_noodle_path
  end
end
