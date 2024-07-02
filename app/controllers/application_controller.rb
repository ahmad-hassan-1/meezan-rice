class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    flash[:notice] = t("devise.sessions.signed_in")
    root_path
  end

  def after_sign_out_path_for scope
    flash[:notice] = t("devise.sessions.signed_out")
    root_path
  end
end
