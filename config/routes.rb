Rails.application.routes.draw do
  root to: "status#index"
  resources :places
end
