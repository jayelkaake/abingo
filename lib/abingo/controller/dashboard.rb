module Abingo::Controller::Dashboard
  ActionController::Base.prepend_view_path File.join(File.dirname(__FILE__), "../views")

  def index
    @experiments = Abingo::Experiment.all
    render :template => 'dashboard/index'
  end

  def end_experiment
    @alternative = Abingo::Alternative.find(params[:id])
    @experiment = Abingo::Experiment.find(@alternative.experiment_id)
    if (@experiment.status != "Completed")
      @experiment.end_experiment!(@alternative.content)
      flash[:notice] = "Experiment marked as ended.  All users will now see the chosen alternative."
    else
      flash[:notice] = "This experiment is already ended."
    end
    redirect_to :action => "index"
  end
end
