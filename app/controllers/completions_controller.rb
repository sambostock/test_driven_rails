class CompletionsController < ApplicationController
  def create
    todo.touch :completed_at
    redirect_to todos_path
  end

  private

  def todo
    current_user.todos.find(todo_id_param)
  end

  def todo_id_param
    params.require(:todo_id)
  end
end
