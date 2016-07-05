Rails.application.routes.draw do


  resources :burger_places do
    resources :reviews
  end
resources :reviews
  resources :users


end
