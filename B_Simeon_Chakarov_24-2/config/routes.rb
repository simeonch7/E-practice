Rails.application.routes.draw do
  resources :table_bottles
  resources :tables
  resources :bottles
  get "/B_24_Simeon_Chakarov_table_bottles", to: "table_bottles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
