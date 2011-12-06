Rubyweekend::Application.routes.draw do
  resources :registrations

  root :to => "pages#index"
end
