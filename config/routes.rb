Rails.application.routes.draw do
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  get '/' => 'pages#quiz'
  get ':id/result' => 'pages#result'
  get 'result' => 'pages#result'
  post ':id/judge' => 'pages#judge'

  resources :questions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
