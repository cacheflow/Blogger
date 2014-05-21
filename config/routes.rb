Blogger::Application.routes.draw do
	root to: "articles#index"

resources :articles do 
	resources :comments
end 
resources :tags
resources :authors
resources :auths
#get "auths/new" => "auths#new", :as => :new_auth 
end 



