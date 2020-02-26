# todos_controller.rb
class TodosController < ApplicationController
  def index
    render plain: Todo.all.order(:due_date).map { |todo| todo.to_pleasant }.join("\n")
  end
end
