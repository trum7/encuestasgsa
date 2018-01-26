Rails.application.routes.draw do
  resources :encuesta
  resources :courseprofesors
  resources :students

  post '/login/validate', to: 'login#validate'
  get '/student/home', to: 'students#home'
  post '/encuesta/generate', to: 'encuesta#generate'
  post '/encuesta/encuesta', to: 'encuesta#encuesta'
  post '/encuesta/save', to: 'encuesta#save'
  get 'login/logout', to: 'login#logout'

  root :to => 'login#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
