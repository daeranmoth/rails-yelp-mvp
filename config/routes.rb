Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:new, :create, :show, :index] do
    # collection do
    #   get :top
    # end
    # member do
    #   get :contact
    # end
    resources :reviews, only: [:new, :create]
  end

  # ressources :reviews, only: [:destroy]
end
