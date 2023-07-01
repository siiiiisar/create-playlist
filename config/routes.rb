Rails.application.routes.draw do
  get 'musics/index'
  get 'musics/search'
  get 'musics/show'
  devise_for :users, controllers: {
      omniauth_callbacks: "users/omniauth_callbacks"
  }
  get 'home/index'
  root to: "home#index"

  resources :musics do
       collection {get "search"}
  end
end
