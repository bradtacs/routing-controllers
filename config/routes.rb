Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/welcome' => 'pages#welcome'
  get '/kitten/:size' => 'pages#kitten'

  get '/contest' => 'pages#contest'

end
