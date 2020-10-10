class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @reviews = current_user.reviews
    @age = current_user.age.name
    @skintype = current_user.skintype.name
  end
end
