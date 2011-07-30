ColRep::Application.routes.draw do

root :to => 'pages#home'

resources :people do
  resources :posts, :only => [:create, :destroy]
end

match '/about', :to => 'pages#about'

end
