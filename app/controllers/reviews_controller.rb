class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @review = Review.find(params[:review_id])
  end

  def create
    @review = Review.new(review_params)
    @review = Review.find(params[:review_id])
    @review.review = @review
    if @review.save
      redirect_to review_path(params[:review_id])
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
