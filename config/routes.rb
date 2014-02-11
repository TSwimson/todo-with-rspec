TodoWithRspec::Application.routes.draw do
  get '/todos', to: 'todos#index', as: :todos
  post '/todos', to: 'todos#create', as: :create_todo
  get '/todos/:id/show', to: 'todos#show', as: :show_todo
  get 'todos/new', to: 'todos#new', as: :new_todo
  get "/todos/new", to: "todos#new", as: "new_todo"
  post "/todos", to: "todos#create"
end
