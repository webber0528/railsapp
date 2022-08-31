cRails.application.routes.draw do
  get 'students/index', to: 'students#index'
  root 'students#index'
  get 'students/new', to: 'students#new'
  post 'students', to: 'students#create'
  delete 'students/:id', to: 'students#destroy'
  get 'students/:id', to: 'students#show'
  get 'students/:id/edit', to: 'students#edit'
  patch 'students/:id', to: 'students#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
