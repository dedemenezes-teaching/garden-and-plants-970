Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :gardens, only: :show do
    resources :plants, only: %i[create]
  end

  # WE ONLY NEST RESOURCES IF WE NEED THE ID OF THE PARENT
  resources :plants, only: :destroy
end
