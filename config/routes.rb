LoginApp::Application.routes.draw do
  
  root to: 'hellos#index'
  resources :users, only: [ :new, :create, :show ] 
  
  resources :hellos
  resources :sessions, only: [ :new, :create ]
  
  get 'sign_in' => 'sessions#new', as: :sign_in
  get 'sessions' => 'sessions#destroy', as: :sign_out 
  
end
