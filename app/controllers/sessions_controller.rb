class SessionsController < ApplicationController
  def new
end

def create
  user = User.find_by(email: params[:session][:email].downcase)
   if user && user.authenticate(params[:session][:password])
    session[:user_id] = user.id
     redirect_to user
    else
      redirect_to '/login'
  end
end

def destroy
   session[:user_id] = nil
   redirect_to '/login'
 end

 private
 def user_params
   params.require(:user).permit(:name, :email, :password,
                                :password_confirmation)
 end

end
