class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @reviews = user.reviews
    @age = user.age.name
    @skintype = user.skintype.name
  end
end
