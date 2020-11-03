class TasksController < ApplicationController
  before_action :set_task, only: [:show]

  # R EAD
  # GET /tasks
  def index
    @tasks = Task.all
  end

  # GET /tasks/:id
  attr_reader :show
  # def show
  # end

  # C REATE
  # GET /tasks/new
  def new
    @task = Task.new
    # create an empty new instance of Task
    # needed to instantiate the form_for
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
