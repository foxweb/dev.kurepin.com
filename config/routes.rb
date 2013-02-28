Dev::Application.routes.draw do

  #get "home/index" # comment this for test_should_get_index PASS

  resources :posts do
    get :autocomplete_post_title, on: :collection
    resources :comments
  end
  resources :sections
  resources :categories
  resources :news
  resources :sources
  resources :links

  match 'news/:year/:month/:day' => 'news#show',
    constraints: { year: /\d{4}/, month: /\d{1,2}/, day: /\d{1,2}/ },
    as: 'newsdate'

  namespace :admin do
    resources :users
    resources :news
    resources :posts
    resources :comments
    resources :sections
    resources :categories
    resources :pages
    resources :layouts
    resources :snippets
    resources :origins
    resources :sources
    resources :links
  end

  root to: 'home#index'

  mount Puffer::Engine => '/'
  mount Ckeditor::Engine => '/ckeditor'
  mount PufferPages::Engine => '/'
end
