Rails.application.routes.draw do


  resources :burger_places, except: [:new, :edit] do
    resources :reviews, except: [:new, :edit]
  end

  resources :users, except: [:new, :edit]


end
