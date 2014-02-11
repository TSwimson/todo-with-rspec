class TodosController < ApplicationController

    def index
      @todos = Todo.all
    end

    def create
      @todo = Todo.create(todo_params)
      redirect_to '/todos/new'
    end

    def show
      @todo = Todo.find(params[:id])
    end

    def new
      @todo = Todo.new
    end

    private

    def todo_params
      params.require(:todo).permit(:title)
    end

end
