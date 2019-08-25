class TasksController < ApplicationController
  def index
    @group_tasks = Task.all.in_groups_of(4, false)
  end
end
