class Abingo::Railtie < Rails::Railtie
  initializer 'abingo.view_helpers' do
    ActionView::Base.send :include, Abingo::ViewHelpers
  end

  initializer 'abingo.controller_helpers' do
    ActionController::Base.send :include, Abingo::ControllerHelpers
  end
end
