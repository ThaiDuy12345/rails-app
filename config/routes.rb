Rails.application.routes.draw do
  scope '/api' do
    post "/authentication/sign-in", :to => "authentication#sign_in"
    resources :order
    resources :product
    resources :account
    resources :account
  end
end
