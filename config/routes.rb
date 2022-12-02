Rails.application.routes.draw do
    # Recipes view and create
    resources :recipes, only: [:index, :create]
    # Sign-up feature
    post "/signup", to: "users#create"
    # Auto-Login feature
    get "/me", to: "users#show"
    # Login after sign-up
    post "/login", to: "sessions#create"
    # Logout after login
    delete "/logout", to: "sessions#destroy"
end
