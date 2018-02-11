class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(email: params[:user][:email], username: params[:user][:username], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    redirect_to user_url(@user)
  end

  def destroy
    @user = User.find_by(id: params[:id])
    redirect_to root_url
  end

end
