class ReviewsController < ApplicationController

  before_action :search_review, only: [:index, :search]

  def index
    @reviews = Review.includes(:user).order("created_at DESC")
    set_review_column
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
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  def search
    @results = @p.result
  end

  private

  def review_params
    params.require(:review).permit(:image, :item_name, :item_brand, :item_maker, :content, :rate, :category_id).merge(user_id: current_user.id)
  end

  def search_review
    @p = Review.ransack(params[:q])
  end

  def set_review_column
    @review_rate = Review.select("rate").distinct.order('rate DESC')
    @review_item_brand = Review.select("item_brand").distinct.order('item_brand ASC')
    @review_item_maker = Review.select("item_maker").distinct.order('item_brand DESC')
  end
  
end
