module ApplicationHelper
  def bootstrap_flash_class(type)
    case type.to_sym
    when :notice
      "alert-info"
    when :success
      "alert-success"
    when :error
      "alert-danger"
    when :alert
      "alert-warning"
    else
      "alert-primary"
    end
  end
end
