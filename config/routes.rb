Rails.application.routes.draw do
  get 'main/login'
  resources :scores
  resources :students

  post 'main/create'
  get 'students/:id/edit_scores', to: 'students#edit_score', as: 'edit_scores'
  get 'scores/new/:student_id', to: 'scores#new', as: 'new_this_student_score'
  # get 'scores/edit_score/:id/:student_id', to: 'scores#edit', as: 'edit_this_score'
  delete 'scores/:id/:student_id', to: 'scores#destroy', as: 'delete_score'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
