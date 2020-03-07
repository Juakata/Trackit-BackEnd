# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::CategoriesController, type: :controller do
  describe 'Update goal categories' do
    context 'with valid params' do
      let(:new_attributes) do
        {
          username: 'Andoni',
          net: 100,
          look: 200,
          cod: 300,
          rel: 400,
        }
      end

      it 'updates the goal of all categories' do
        user = create(:user)
        create :category, :net
        create :category, :look
        create :category, :cod
        create :category, :rel
        get :update_goals, params: new_attributes
        expect(user.categories.find(1).attributes).to include("goal_time" => 100)
        expect(user.categories.find(2).attributes).to include("goal_time" => 200)
        expect(user.categories.find(3).attributes).to include("goal_time" => 300)
        expect(user.categories.find(4).attributes).to include("goal_time" => 400)
      end
    end
  end
end
