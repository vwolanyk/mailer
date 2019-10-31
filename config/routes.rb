Rails.application.routes.draw do
  root "letter_writers#index"
  resources :letter_writers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
