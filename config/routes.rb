Rails.application.routes.draw do
  resources :monsters


  post '/monsters/new', to: 'monsters#create'
  get '/monsters/:id/edit', to: 'monsters#edit'
  put '/monsters/:id', to: 'monsters#update'

  root "monsters#index"
end
