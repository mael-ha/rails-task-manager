Rails.application.routes.draw do
  root 'tasks#index'
  get 'tasks', to: 'tasks#index'
  get 'tasks/add', to: 'tasks#add'
  get 'tasks/:id', to: 'tasks#show', as: :task
  post 'task', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id/', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
end
