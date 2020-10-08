class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:image, :item_name, :content, :rate, :category_id).merge(user_id: current_user.id)
  end

end
