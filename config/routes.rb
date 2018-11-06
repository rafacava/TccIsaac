Rails.application.routes.draw do
  
  root 'index#principal'
  resources :diagnosticos
  resources :terciaria_caracteristicas
  resources :secundaria_caracteristicas
  resources :principal_caracteristicas
  resources :terciario_fators
  resources :secundario_fators
  resources :principal_fators
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
