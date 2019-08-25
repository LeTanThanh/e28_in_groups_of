class TasksForm
  def initialize params
    @params = params
  end

  def tasks_number
    @tasks_number ||= params_tasks_number || Settings.task.default_tasks_number
  end

  private
  attr_reader :params

  def params_tasks_number
    tasks_number = params.dig(:tasks, :tasks_number).to_i
    tasks_number.positive? ? tasks_number : nil
  end
end
