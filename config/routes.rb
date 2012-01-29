Rubyweekend::Application.routes.draw do

  resources :waitlists

  resources :registrations

  resources :hidden_registrations

  #match '/dylan_registration', :to => 'hidden_registrations#new'

  root :to => "pages#index"
  match '/resources', :to => 'pages#resources', :as => :resources
  match '/survey', :to => 'pages#survey', :as => :resources


end
