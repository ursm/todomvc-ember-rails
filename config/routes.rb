TodoMVC::Application.routes.draw do
  root to: 'todo#show'

  namespace :api do
    resources :todos
  end
end
