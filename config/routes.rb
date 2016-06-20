Rails.application.routes.draw do
  resources :reviews, except: [:new, :edit]
  resources :burger_places, except: [:new, :edit]
  resources :users, except: [:new, :edit]


end
