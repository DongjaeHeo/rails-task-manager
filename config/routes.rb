Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # all the task
  get 'tasks', to: 'tasks#index'
  # create a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # show each task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # save the new task
  post 'tasks', to: 'tasks#create'
  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'
end
