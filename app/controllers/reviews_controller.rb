class ReviewsController < ApplicationController

  def index
    @reviews = Review.all.order("created_at DESC")
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
    @comment = Comment.new
    @comments = @review.comments.includes(:user)
  end

  def edit
  end

  private

  def review_params
    params.require(:review).permit(:image, :item_name, :content, :rate, :category_id).merge(user_id: current_user.id)
  end

end
