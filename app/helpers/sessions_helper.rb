module SessionsHelper
  def sign_in(user)
    session[:user_id] = user.id
  end

  def signed_in?
    current_user.present?
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
end
