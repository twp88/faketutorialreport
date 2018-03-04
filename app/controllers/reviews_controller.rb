class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    @review.tutorial_id = session[:passed_tutorial_id]
    @review.save
    redirect_to tutorial_path(session[:passed_tutorial_id])
  end

  private

  def review_params
    params.require(:review).permit(:tutorial_name,
                                   :tutorial_score,
                                   :tutorial_comment,
                                   :tutorial_id)
  end
end
