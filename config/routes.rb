Rails.application.routes.draw do

  resources :next_questions
  resources :nexts
  resources :questions do
    resources :answers
  end
  root 'questions#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
