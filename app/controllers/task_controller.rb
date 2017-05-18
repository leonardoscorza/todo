class TaskController < ApplicationController
  before_action :set_task, only: [:done]

  def index
    @tasks = Task.where(status: :todo)
    @tasks_done = Task.where(status: :done)
  end

  def create
    @task = Task.new(description: params[:description], status: :todo)

    if @task.save
      redirect_to({ action: 'index' }, notice: "Task was successfully created.")
    else
      redirect_to({ action: 'index' }, notice: "Task was not created.")
    end
  end

  def done
    if @task.done
      redirect_to({ action: 'index' }, notice: "Task is done.")
    else
      redirect_to({ action: 'index' }, notice: "Problem in put task done.")
    end
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end
end
