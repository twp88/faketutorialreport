require 'rails_helper'

describe AverageScoreService do
  subject { AverageScoreService.new(tutorial) }

  let(:tutorial_review_average) { 8 }

  let(:tutorial) { create(:tutorial, :standard_tutorial) }
  let(:second_tutorial) { create(:tutorial, :standard_tutorial) }

  let!(:first_review) do
    create(
      :review,
      :standard_review,
      tutorial_id: tutorial.id
    )
  end
  let!(:second_review) do
    create(
      :review,
      :standard_review,
      tutorial_id: tutorial.id
    )
  end
  let!(:third_review) do
    create(
      :review,
      :standard_review,
      tutorial_id: tutorial.id,
      tutorial_score: 6
    )
  end
  let(:other_review) do
    create(
      :review,
      :standard_review,
      tutorial_id: second_tutorial.id
    )
  end

  context 'when called' do
    it 'collects all of the scores for one tutorial' do
      expect(subject.call).to eq tutorial_review_average
    end
  end
end
