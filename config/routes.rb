Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  defaults format: :json do
    root to: "status#index"
    resources :places, only: [:show, :index]
  end
end
