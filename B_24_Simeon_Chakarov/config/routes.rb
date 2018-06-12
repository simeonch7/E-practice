Rails.application.routes.draw do
  resources :teacher_schoolclasses
  resources :schoolclasses
  resources :teachers
  get "/B_24_Simeon_Chakarov_teacher_schoolclasses", to: "teacher_schoolclasses#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
