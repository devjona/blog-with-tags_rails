Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # The 'articles' routes from above are replaced by:
  resources :articles do
    resources :comments
    resources :tags
  end
end
