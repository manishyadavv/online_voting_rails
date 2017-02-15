class HomeController < ApplicationController

def index
   unless session[:user_id]
    return redirect_to '/signin'
   end
end

def rajiv
	# render :layout => false
	rajiv=70116403215
	RajivRanjan.create(:voter=>session[:user_id], :self=>rajiv)
	return redirect_to '/logout'
end

def neil
	# render :layout => false
   neil=40816403215
   NeilTyagi.create(:voter=>session[:user_id], :self=>neil)
   return redirect_to '/logout'

end

def result
render :layout => false

end

def see
	render :layout => false

end





end
