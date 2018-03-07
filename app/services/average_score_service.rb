class AverageScoreService
  def initialize(tutorial)
    @tutorial = tutorial
  end

  def call
    divide_scores
  end

  private

  def collect_scores
    Review.where(tutorial_id: @tutorial.id).collect(&:tutorial_score)
  end

  def sum_scores
    collect_scores.inject(0) { |sum, x| sum + x }
  end

  def divide_scores
    if sum_scores.nil? || collect_scores.empty?
      0
    else
      sum_scores / collect_scores.length
    end
  end
end
