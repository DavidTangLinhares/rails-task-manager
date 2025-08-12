Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # List all tasks
  get "tasks" => "tasks#index", as: :tasks

  # Create a new task
  get "tasks/new" => "tasks#new", as: :new_task
  post "tasks" => "tasks#create", as: :create_task

  # Show a specific task
  get "tasks/:id" => "tasks#show", as: :task

  # Update a specific task
  get "tasks/:id/edit" => "tasks#edit", as: :edit_task
  patch "tasks/:id" => "tasks#update", as: :update_task

  # Delete a specific task
  delete "tasks/:id" => "tasks#destroy", as: :destroy_task

end
