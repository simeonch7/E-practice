Rails.application.routes.draw do
  resources :member_teams
  resources :members
  resources :teams
  get "/B_24_Simeon_Chakarov_member_teams", to: "member_teams#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
