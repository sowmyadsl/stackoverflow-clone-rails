Rails.application.routes.draw do
  resources :answers
  root to: "questions#index"
  resources :questions
end
