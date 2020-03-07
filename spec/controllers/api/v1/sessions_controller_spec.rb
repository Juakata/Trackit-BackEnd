# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::SessionsController, type: :controller do
  describe 'Accepts a user as valid to enter to the app' do
    let(:valid_attributes) do
      {
        username: 'Andoni',
        password: '123456'
      }
    end

    let(:invalid_user) do
      {
        username: 'Juan',
        password: '123456'
      }
    end

    let(:invalid_password) do
      {
        username: 'Andoni',
        password: '1234567'
      }
    end
    context 'with valid params' do
      it 'Should let the user enter' do
        create(:user)
        get :create, params: valid_attributes
        expect(response).to have_http_status(:ok)
      end

      it 'Should be invalid user' do
        create(:user)
        get :create, params: invalid_user
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'Should be invalid password' do
        create(:user)
        get :create, params: invalid_password
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
