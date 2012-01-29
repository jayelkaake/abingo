require 'rails/generators'

class Abingo::Generators::DashboardStylesheetGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_stylesheet
    copy_file 'dashboard.css', 'public/stylesheets/abingo_dashboard.css'
  end
end
