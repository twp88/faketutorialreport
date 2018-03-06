class TutorialsController < ApplicationController
  def index
    @tutorials = Tutorial.all
  end

  def show
    @tutorial = Tutorial.find(params[:id])
    @average_review_score = AverageScoreService.new(@tutorial).call
    @related_reviews = Review.where(tutorial_id: params[:id])
    session[:passed_tutorial_id] = params[:id]
  end

  private

  def tutorials_params
    params.require(:reminder).permit(:id, :tutorial_name)
  end
end
