Rubyweekend::Application.routes.draw do

  resources :waitlists

  resources :registrations

  resources :hidden_registrations

  root :to => "pages#index"
  match '/resources', :to => 'pages#resources', :as => :resources

end
