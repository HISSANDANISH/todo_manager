# todos_controller.rb
class TodosController < ApplicationController
  def index
    render plain: Todo.all.order(:due_date).map { |todo| todo.to_pleasant }.join("\n")
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.to_pleasant
  end
end
