Rails.application.routes.draw do
  
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root to: 'inicio#index'
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
    }
    resources :emails
    mount Ckeditor::Engine => '/ckeditor'
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    resources :pages, only: [:show]
    resources :searches
    resources :contacts, only: [:create]
    get "aica", to: "aica#index"
    get 'i+d', to: "investigacion#index", as: :investigacion
    get "productos", to: "products#index"
    get "noticias", to: "posts#index"
    get 'noticias/:id', to: 'posts#show', as: :post
    get 'productos/:id', to: 'products#show', as: :product
    get "productos_lista", to: "productos#index"
    get :search, controller: :main
    get '*path' => redirect('/')
  end
end
