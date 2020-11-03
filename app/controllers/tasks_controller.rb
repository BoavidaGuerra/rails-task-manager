class TasksController < ApplicationController
  before_action :set_task, only: [:show]

  # GET /tasks
  def index
    @tasks = Task.all
  end

  attr_reader :show
  # def show
  # end

  def set_task
    @task = Task.find(params[:id])
  end
end

