Rails.application.routes.draw do
  resources :restaurants do

    collection do
      get "top", to: "restaurants#top"
    end

    member do
      get "chef", to: "restaurants#chef"
    end
    # the routes for reviews are nested within Restaurants
    # as they are only accessed through resturant
    # Only the New and Create actions required in this example
    resources :reviews, only: [:new, :create]


  end
end
