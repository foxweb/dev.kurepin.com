Dev::Application.routes.draw do
  get "home/index"

  resources :posts
  resources :sections
  resources :types
  resources :categories
  resources :news

  match 'news/:year/:month/:day' => 'news#show',
    :constraints => { :year => /\d{4}/, :month => /\d{1,2}/, :day => /\d{1,2}/ },
    :as => 'newsdate'

  namespace :admin do
    resources :users
    resources :news
    resources :posts
    resources :types
    resources :sections
    resources :categories
    resources :pages
    resources :layouts
    resources :snippets
  end

  root :to => 'home#index'
end
