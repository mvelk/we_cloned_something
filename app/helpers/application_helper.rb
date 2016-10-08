module ApplicationHelper
  def auth_token
    "<input name='authenticity_token' type='hidden' value='#{form_authenticity_token}'>".html_safe
  end

  def delete_button(path)
    link_to "Delete", path, method: :delete
  end

  def edit_button(path)
    link_to "Edit", path, method: :get
  end

  def create_button(path)
    button_to "Create", path, method: :get
  end
end
