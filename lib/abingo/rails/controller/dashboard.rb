module Abingo::Rails::Controller::Dashboard
  def index
    @experiments = Abingo::Experiment.all
  end
end
