Rails.application.routes.draw do
  resources :estudiantes
  root "estudiantes#index"
end