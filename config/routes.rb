Rails.application.routes.draw do
  root to: "home#index"
  get '/home', to: 'home#index'
  get 'musics/index'
  get 'musics/search'
  get 'musics/show'
  get 'musics/create'
  devise_for :users, controllers: {
      omniauth_callbacks: "users/omniauth_callbacks"
  }
 

  resources :musics do
       collection {get "search"}
  end
end
