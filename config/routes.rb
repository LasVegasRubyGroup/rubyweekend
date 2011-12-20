Rubyweekend::Application.routes.draw do

  resources :waitlists

  resources :registrations

  root :to => "pages#index"
end
