module SessionsHelper
  def login_button
    button_to "Log In", new_session_url, method: :get
  end

  def logout_button
    button_to "Log Out", session_url, method: :delete
    ## remember dis ##
  end

  # def create_button
  #   button_to "Create", new_sub_url, method: :get
  # end
end
