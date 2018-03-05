require 'spec_helper'
require 'rails_helper'

RSpec.describe TutorialsController, type: :controller do
  describe '#index' do
    it 'responds with 200 code' do
      get :index

      expect(response.code).to eq '200'
    end
  end
end
