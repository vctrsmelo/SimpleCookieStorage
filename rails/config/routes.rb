Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to: 'cookies_storage#index'
  post '/', to: 'cookies_storage#create'
  delete '/delete/:key', to: 'cookies_storage#destroy', as: 'delete'
end
