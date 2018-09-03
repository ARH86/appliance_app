Rails.application.routes.draw do
  namespace :api do
   get "/appliances" => 'appliances#index'
   post "/appliances" => 'appliances#create'
   get "/appliances/:id" => 'appliances#show'
   patch "/appliances/:id" => 'appliances#update'
   delete "/appliances/:id" => 'appliances#destroy'
 end
end
