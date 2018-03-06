require 'rails_helper'

describe AverageScoreService do
  subject { AverageScoreService.new(tutorial) }

  let(:tutorial_review_average) { 8 }

  let(:tutorial) { create(:tutorial, :standard_tutorial) }
  let(:second_tutorial) { create(:tutorial, :standard_tutorial) }

  let!(:first_review) { create(
                              :review,
                              :standard_review,
                              tutorial_id: tutorial.id
                              )}
  let!(:second_review) { create(
                              :review,
                              :standard_review,
                              tutorial_id: tutorial.id
                              ) }
  let!(:third_review) { create(
                              :review,
                              :standard_review,
                              tutorial_id: tutorial.id,
                              tutorial_score: 6
                              ) }
  let(:other_review) { create(
                              :review,
                              :standard_review,
                              tutorial_id: second_tutorial.id
                              ) }

  context 'when called' do
    it 'collects all of the scores for one tutorial' do
      expect(subject.call).to eq tutorial_review_average
    end
  end
end
