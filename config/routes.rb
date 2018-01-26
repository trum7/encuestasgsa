Rails.application.routes.draw do
  resources :encuesta
  resources :courseprofesors
  resources :students

  post '/login/validate', to: 'login#validate'
  get '/student/home', to: 'students#home'
  get '/admin/home', to: 'admin#home'
  post '/encuesta/generate', to: 'encuesta#generate'
  post '/encuesta/encuesta', to: 'encuesta#encuesta'
  post '/encuesta/save', to: 'encuesta#save'
  get 'login/logout', to: 'login#logout'
  get 'admin/borrarEstudiantes', to: 'admin#borrarEstudiantes'
  get 'admin/borrarEncuestas', to: 'admin#borrarEncuestas'
  get 'admin/borrarProfesores', to: 'admin#borrarProfesores'
  get 'admin/cargar', to: 'admin#cargar'
  post 'admin/subir', to: 'admin#subir'
  get 'admin/cargarcourse', to: 'admin#cargarcourse'
  post 'admin/subircourse', to: 'admin#subircourse'
  get 'encuestas/download', to: 'encuesta#download'

  root :to => 'login#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
