Rubyweekend::Application.routes.draw do

  resources :waitlists

  resources :registrations

  resources :hidden_registrations

  #match '/rich_registration', :to => 'hidden_registrations#new'
  #match '/kyle_registration', :to => 'hidden_registrations#new'
  #match '/jackie_registration', :to => 'hidden_registrations#new'

  match '/rob_registration', :to => 'hidden_registrations#new'
  #match '/kelley_registration', :to => 'hidden_registrations#new'
  #match '/christian_registration', :to => 'hidden_registrations#new'

  root :to => "pages#index"
end
