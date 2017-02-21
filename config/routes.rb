Rails.application.routes.draw do
  resources :events
  #get 'welcome/index'
  root to: 'welcome#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :user, only: :destroy do
    get 'retire'
  end

  resources :events do
    resources :tickets do
    end
  end

  match '*path' => 'application#error404', via: :all
end
