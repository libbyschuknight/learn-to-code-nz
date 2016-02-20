Rails.application.routes.draw do
  root to: 'visitors#index'

  get "pages/:page" => "pages#show"
end
