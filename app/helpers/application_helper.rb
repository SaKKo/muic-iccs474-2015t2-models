module ApplicationHelper
  def header_active(controller,action)
    return 'active' if controller == params[:controller] && action == 'all'
    return 'active' if controller == params[:controller] && action == params[:action]
    ''
  end

  def dropdown_header_active(controllers)
    return 'active' if controllers.include?(params[:controller])
    ''
  end

  # def current_user
  #   @current_user
  # end

end
