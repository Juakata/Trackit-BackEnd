# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::UserCategoriesController, type: :controller do
  describe 'Should create a relation between User and Category' do
    context 'with valid params' do
      let(:valid_attributes) do
        {
          date: '2020-02-06',
          progress: 100,
          user: 'Andoni',
          category: 'Networking',
        }
      end

      it 'Should create a relation with Networking and Andoni' do
        create(:user)
        create :category, :net
        expect do
          get :set_user_category, params: valid_attributes
        end.to change(UserCategory, :count).by(1)
      end

      it 'If relation already created it should increase the progress' do
        create(:user)
        create :category, :net
        create(:user_category)
        get :set_user_category, params: valid_attributes
        expect(UserCategory.find(1).attributes).to include("progress" => 200)
      end
    end
  end
end
