class Api::SessionsController < Devise::SessionsController
  respond_to :json

  def new

  end

  def create
   user = User.find_by(email: params[:session][:email].downcase)
   if user && user.authenticate(params[:session][:password])
     session[:user_id] = user.id
     flash[:notice] = "Log in Sucessfull"
     redirect_to user
   else
     flash.now[:notice] = "Login Error"
     render 'new'
   end
 end

 def destroy
   session[:user_id] = nil
   flash[:success] = "You are Logged out"
   redirect_to root_path
 end

  private

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end
end
