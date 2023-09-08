MAIN_URL = "/api"
SERVICE_TYPE = {
  :authentication => "/authentication",
  :account => "/account",
  :product => "/product",
  :order => "/order"
}
ROUTE_URLS = {
  :authentication => "#{MAIN_URL}#{SERVICE_TYPE[:authentication]}",
  :account => "#{MAIN_URL}#{SERVICE_TYPE[:account]}",
  :product => "#{MAIN_URL}#{SERVICE_TYPE[:product]}",
  :order => "#{MAIN_URL}#{SERVICE_TYPE[:order]}"
}

Rails.application.routes.draw do

  # Authentication
  post "#{ROUTE_URLS[:authentication]}/sign-in", :to => "authentication#sign_in"

  # Account
  get "#{ROUTE_URLS[:account]}", :to => "account#get_all"
  get "#{ROUTE_URLS[:account]}/getAccountById/:id", :to => "account#get_by_id"
  post "#{ROUTE_URLS[:account]}/createAccount", :to => "account#create"
  put "#{ROUTE_URLS[:account]}/updateAccount/:id", :to => "account#update"
  delete "#{ROUTE_URLS[:account]}/deleteAccount/:id", :to => "account#delete"

  # Product
  get "#{ROUTE_URLS[:product]}", :to => "product#get_all"
  get "#{ROUTE_URLS[:product]}/getProductById/:id", :to => "product#get_by_id"
  post "#{ROUTE_URLS[:product]}/createProduct", :to => "product#create"
  put "#{ROUTE_URLS[:product]}/updateProduct/:id", :to => "product#update"
  delete "#{ROUTE_URLS[:product]}/deleteProduct/:id", :to => "product#delete"

  # Order
  get "#{ROUTE_URLS[:order]}", :to => "order#get_all"
  get "#{ROUTE_URLS[:order]}/getOrderById/:id", :to => "order#get_by_id"
  post "#{ROUTE_URLS[:order]}/createOrder", :to => "order#create"
  put "#{ROUTE_URLS[:order]}/updateOrder/:id", :to => "order#update"
  delete "#{ROUTE_URLS[:order]}/deleteOrder/:id", :to => "order#delete"
end
