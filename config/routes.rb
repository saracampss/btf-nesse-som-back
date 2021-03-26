Rails.application.routes.draw do
  get 'podcast/index'
  get 'podcast/show'
  get 'podcast/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/podcasts' => 'podcast#index'
  post '/podcasts' => 'podcast#create'
  delete '/podcasts' => 'podcast#destroy'
  put '/podcasts' => 'podcast#update'

  get 'video/index'
  get 'video/show'
  get 'video/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/videos' => 'video#index'
  post '/videos' => 'video#create'
  delete '/videos' => 'video#destroy'
  put '/videos' => 'video#update'

  get 'publi/index'
  get 'publi/show'
  get 'publi/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/publis' => 'publi#index'
  post '/publis' => 'publi#create'
  delete '/publis' => 'publi#destroy'
  put '/publis' => 'publi#update'

  get 'lancamento/index'
  get 'lancamento/show'
  get 'lancamento/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/lancamentos' => 'lancamento#index'
  post '/lancamentos' => 'lancamento#create'
  delete '/lancamentos' => 'lancamento#destroy'
  put '/lancamentos' => 'lancamento#update'

  put '/adm' => 'adm#update'
  post '/adm' => 'adm#create'

  resource :adms, only: [:create]
  post "/login", to: "adms#login"
  get "/auto_login", to: "adms#auto_login"
end

