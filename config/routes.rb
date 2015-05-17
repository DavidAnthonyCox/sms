Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'admin/dashboard#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

    resources :people
    resources :identities
    resources :identitys
    resources :organizations
    resources :contact_categories

end
