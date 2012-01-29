require File.dirname(__FILE__) + '/lib/abingo'
require File.dirname(__FILE__) + '/lib/generators/abingo/migration/migration_generator.rb'
require File.dirname(__FILE__) + '/lib/generators/abingo/stylesheets/dashboard_stylesheet_generator.rb'

ActionController::Base.send :include, AbingoSugar
ActionView::Base.send :include, AbingoViewHelper