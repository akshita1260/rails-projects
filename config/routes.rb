Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
   root "employees#login"
  #  get '/employees/:status', to: 'employees#index', foo: 'inactivated'
  
   get '/new' => 'employees#new'
  get '/show' => 'employees#show'
  get '/login' => 'employees#login'

  post 'login_user' => 'employees#login_user'
  resources :employees
  

  
end
