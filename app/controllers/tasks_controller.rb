class TasksController < ApplicationController
  before_action :load_tasks_form, only: :index

  def index
    @group_tasks = Task.all.in_groups_of(tasks_number_params, false)
  end

  private

  def load_tasks_form
    @tasks_form = TasksForm.new params
  end

  def tasks_number_params
    @tasks_form.tasks_number
  end
end
