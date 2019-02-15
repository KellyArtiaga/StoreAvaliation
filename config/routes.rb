Rails.application.routes.draw do
  resources :store_avaliations
  resources :users
  resources :stores do
    resources :store_avaliations
      collection do
        get :search #create a new path for searching
      #end
    end
  end
  root 'store_avaliations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
