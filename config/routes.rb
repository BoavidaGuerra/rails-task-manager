Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # verb 'path', to: 'controller#action'
  # RULE!!!! cant have the same path for same verb

  # Create
  # 1. GET the task creation form = 1 request
  # get 'tasks/new', to: 'tasks#new'
  # # 2. POST the parameters to create a new task = 1 request
  # post 'tasks', to: 'tasks#create'

  # # Read
  # # All
  # get 'tasks', to: 'tasks#index'
  # # One
  # get 'tasks/:id', to: 'tasks#show', as: :task

  # # Update
  # # 1. GET the task update form = 1 request
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # # 2. PATCH parameters to update an existing task = 1 request
  # patch 'tasks/:id', to: 'tasks#update'

  # # Delete
  # delete 'tasks/:id', to: 'tasks#destroy'

  # Generates the 7 CRUD routes!
  resources :tasks
end
