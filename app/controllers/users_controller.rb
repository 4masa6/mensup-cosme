class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @reviews = user.reviews
    @age = user.age.name
    @skintype = user.skintype.name
  end

  def following
    @user = User.find(params[:id])
    @users = @user.followings
    render 'users/show_follow'
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
    render 'users/show_follower'
  end
end
