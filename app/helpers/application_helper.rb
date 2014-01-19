module ApplicationHelper

  def controller_and_action_name
    "#{controller_name}-#{action_name}"
  end

end
