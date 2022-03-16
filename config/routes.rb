Rails.application.routes.draw do
  resources :batches
  namespace :api, defaults: { format: :json} do
    resources :orders, :batches
  end
end
