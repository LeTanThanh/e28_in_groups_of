class TasksForm
  def initialize params
    @params = params
  end

  def tasks_number
    @tasks_number ||= params[:tasks][:tasks_number].to_i || Settings.task.default_tasks_number
  end

  private

  attr_reader :params
end
