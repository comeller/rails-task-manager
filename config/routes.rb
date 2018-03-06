Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#read one
get "/tasks", to: "tasks#index"
#Create one
get "/tasks/new", to: "tasks#new"
post "/tasks", to: "tasks#create"
#read all
get "/tasks/:id", to: "tasks#show", as: :task
#update
get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task
patch "/tasks/:id", to: "tasks#update"
#delete
delete "task/:id", to: "tasks#destroy", as: :delete_task
end
