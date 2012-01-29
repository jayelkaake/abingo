class Abingo::Railtie < Rails::Railtie
  initializer 'abingo.view_helpers' do
    ActionView::Base.send :include, ViewHelpers
  end

  initializer 'abingo.controller_helpers' do
    ActionController::Base.send :include, ControllerHelpers
  end
end
