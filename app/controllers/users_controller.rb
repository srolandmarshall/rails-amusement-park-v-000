class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
      flash[:notice] = "Something went wrong."
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @message = flash[:alert]
    if current_user
      @user = current_user
    else
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :nausea, :height, :tickets, :happiness, :admin)
  end
end
