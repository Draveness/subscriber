class ApplicationController < ActionController::API
  def authenticate

  end

  def authenticate_token
    authenticate_with_http_token do
      User.find_by(auth_token: auth_token)
    end
  end
end
