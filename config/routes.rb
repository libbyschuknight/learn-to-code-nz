Rails.application.routes.draw do
  root to: 'visitors#index'

  resources :learning_resources

  get "pages/:page" => "pages#show"
end
