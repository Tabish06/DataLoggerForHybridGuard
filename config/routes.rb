Rails.application.routes.draw do
  resources :log_hybrid_guards
  resources :log_csp_data
  resources :log_load_times
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
