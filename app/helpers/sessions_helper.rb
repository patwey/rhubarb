module SessionsHelper
  def sign_in(user)
    session[:user_id] = user.id
  end

  def sign_out
    session.delete(:user_id)
    @current_user = nil
  end

  def signed_in?
    current_user.present?
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
end
