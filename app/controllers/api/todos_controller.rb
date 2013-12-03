class Api::TodosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Todo.all
  end

  def create
    render json: Todo.create!(todo_params)
  end

  def update
    todo = Todo.find(params[:id])
    todo.update! todo_params

    render json: todo
  end

  def destroy
    Todo.destroy params[:id]

    head :ok
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :completed)
  end
end
