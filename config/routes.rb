Rails.application.routes.draw do
  get '/' =>'home#index'
  get '/signin'=>'login#signin_get'
  post '/signin'=>'login#signin'

  get '/signup'=>'login#signup_get'
  post '/signup'=>'login#signup'

  get '/logout'=>'login#logout'
  
  get '/rajiv'=>'home#rajiv'
  get '/neil'=>'home#neil'
  get '/result'=>'home#result'
  get '/change'=>'login#change_get'
  post '/change'=>'login#change'

end
