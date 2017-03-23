class HomeController < ApplicationController
before_action :authenticate_user!

def index

end

def rajiv

	rajiv=70116403215
	RajivRanjan.create(:voter=>current_user.id, :self=>rajiv)
	return redirect_to '/logout'
end

def neil
   neil=40816403215
   NeilTyagi.create(:voter=>current_user.id, :self=>neil)
   return redirect_to '/logout'

end

def result
render :layout => false

end

def see
	render :layout => false

end





end

