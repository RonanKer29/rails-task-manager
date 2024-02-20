class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    raise
  end

private

  def task_params
    params.require(:restaurant).permit(:title, :details, :completed)
  end
end
