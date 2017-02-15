class HomeController < ApplicationController

def index
   unless session[:user_id]
    return redirect_to '/signin'
   end
end

def rajiv
	rajiv=70116403215
	RajivRanjan.create(:voter=>session[:user_id], :self=>rajiv)
	return redirect_to '/'
end

def neil
   neil=40816403215
   NeilTyagi.create(:voter=>session[:user_id], :self=>neil)
   return redirect_to '/'

end

def result
end







end

