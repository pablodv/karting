module ApplicationHelper

  def current_klass(model)
    controller_name == model ? 'current' : ''
  end

end
