Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" } 
  root "rooms#index"
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
end
