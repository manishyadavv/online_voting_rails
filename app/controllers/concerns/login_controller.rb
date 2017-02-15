class LoginController < ApplicationController
  
  def signin_get
  puts "hello in signin_get"
  end
   
def signin
	puts "hello in post signin"
  	enrollment =params[:enrollment]
  	name=params[:name]
  	password=params[:password]
    user=User1.find_by_enrollment(enrollment)
    if user
        if user.password==password
        session[:user_id]=user.id	
        return redirect_to '/'
        else
        return redirect_to '/signin'
        end
    else
    return redirect_to '/signup'
    end
 end

  def signup_get
  end

  def signup
   enrollment=params[:enrollment]
   puts "enrollment is #{enrollment}"
   name=params[:name]
   password=params[:password]
   unless User1.find_by_enrollment(enrollment)
   user=User1.create(:enrollment=>enrollment,:name=>name,:password=>password)
   session[:user_id]=user.id
   return redirect_to '/'
   else
   return redirect_to '/signin'
   end

end

def logout
	session[:user_id]=nil;
	return redirect_to '/'
end

def change_get
  
end

def change
  password=params[:password]
  user=User1.find_by_id(session[:user_id])
  user.password=password
  user.save
  return redirect_to '/'
end
end

#   def enrollment_get
#   end
   
# def enrollment

#     enrollment=params[:enrollment]
#     user=User.find_by_enrollment(enrollment)
#     if user
# 	return redirect_to '/password'
#     else
# 	return redirect_to '/enrollment'
#     end

# end

#   def password_get
#   end

#   def password
#    password=params[:password]
#    user=User.find_by_password(password)

#    if user

#    	session[:user_id]=user.id
#    	return redirect_to '/'
#    	else
#    	return redirect_to '/password'

#    end
#   end

# def logout
# 	session[:user_id]=nil;
# 	return redirect_to '/'
# end

