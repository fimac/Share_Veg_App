class UsersController < ApplicationController

  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]

  def index
    @all_users = User.all
    # @user = User.find_by(id: params['id'])
  end

  def show
    @user = User.find_by(id: params['id'])
    # raise "hell"
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path( @user )
    else
      render :new # Show them the Sign Up form again
    end

    cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "link" ] )
    @user.image = cloudinary["url"]
    @user = @current_user
    @user.save

    redirect_to "/users/#{user.id}"
  end

  def edit
    @user = User.find_by(id: params["id"])
  end

  def update
    user = User.find_by( id: params['id'] )
    user.update ( user_params )
    redirect_to "/users/#{user.id}"
  end

  def destroy
    user = User.find_by( id: params['id'] )
    user.destroy
    redirect_to "/users"
  end

   private
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :bio, :allergies, :likes, :dislikes, :image)
      end

      def check_if_logged_out
        if @current_user
          flash[:error] = "You are already logged in"
          redirect_to "/users"
        end
      end

      def check_if_logged_in
        unless @current_user
          flash[:error] = "You need to be logged in for that"
          redirect_to "/login"
        end
  end

end
