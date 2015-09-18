Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
       match "/music/index/:id" => "music#index", :via => :get
        #match "/music/index/:id" => "music#index", via: [:get, :post]
    end
  end



  root "music#index"
  match "/music/demo" => "music#index", via: [:get, :post]
  match "/music/demo/:id" => "music#show", :via => :get, :as => :detail
  get '/music/home' => 'music#home'
  match '/music/api' => 'music#api', via: [:get, :post]
end
