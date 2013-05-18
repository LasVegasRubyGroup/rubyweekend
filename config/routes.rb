Rubyweekend::Application.routes.draw do

  resources :waitlists

  resources :registrations

  resources :hidden_registrations

  #match '/dylan_registration', :to => 'hidden_registrations#new'

  root :to => "pages#index"
  match '/downloads', :to => 'pages#downloads', :as => :resources
  match '/resources', :to => 'pages#resources', :as => :resources
  match '/survey', :to => 'pages#survey', :as => :survey
  match '/refund_policy', :to => 'pages#refund_policy', :as => :refund_policy
  match '/hardware_requirements', :to => 'pages#hardware_requirements', :as => :hardware_requirements
  match '/glossary', :to => 'pages#glossary', :as => :glossary
  match '/admin', :to => 'admin#admin', :as => :admin

  match '/notification_list', :to => 'waitlists#new', :as => :notification_list

end
