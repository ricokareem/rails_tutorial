class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def new
    @user = User.new
    @title = "Sign Up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # one way to do it
      # flash[:success] = "Welcome to the jungle"
      # another way to do it
      redirect_to user_path(@user), :flash => { :success => "Welcome to the jungle"}
    else    
      @title = "Sign up"
      render 'new'
    end  
  end  
  
end
