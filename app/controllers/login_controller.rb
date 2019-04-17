class LoginController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(name: params[:user][:username])
    user = user.try(:authenticate, params[:user][:password])
    return redirect_to(controller: 'login', action: 'new') unless user
    session[:user_id] = user.id
    @user = user
    redirect_to controller: 'application', action: 'frontpage'
 end

 def destroy
   session.delete :user_id
   redirect_to '/'
 end
end
