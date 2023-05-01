Rails.application.routes.draw do
  resources :cats
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :cats, only: %i[index show create destroy update] do
    member do
      get :image
    end
  end
end
