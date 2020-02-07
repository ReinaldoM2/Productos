Rails.application.routes.draw do
  devise_for :users
 
  root to: 'products#index'
 # get '/patients/:id', to: 'patients

  get "/import", to: 'products#import'


  get "/search_product", to:'products#search_product'
  resources :products do
	  collection {post :import_from_file}
   end

end
