Rails.application.routes.draw do
  get 'users/login_form'

  resources :questions
  get 'pages/quiz'

  get 'pages/result'

  get 'pages/judge'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
