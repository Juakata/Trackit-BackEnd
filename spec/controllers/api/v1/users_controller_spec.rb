# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  let(:valid_attributes) do
    {
      username: 'Andoni',
      password: '123456',
      repeat: '123456'
    }
  end

  let(:invalid_short_passwords) do
    {
      username: 'Andoni',
      password: '123',
      repeat: '123'
    }
  end

  let(:invalid_different_passwords) do
    {
      username: 'Andoni',
      password: '1234567',
      repeat: '1234568'
    }
  end

  describe 'GET #create' do
    context 'with valid params' do
      it 'creates a new User' do
        expect do
          get :create, params: valid_attributes
        end.to change(User, :count).by(1)
      end

      it 'returns a 201 status code' do
        get :create, params: valid_attributes
        expect(response).to have_http_status(:created)
      end
    end

    context 'with valid params should create categories for user' do
      it 'creates a new User' do
        expect do
          get :create, params: valid_attributes
        end.to change(Category, :count).by(4)
      end
    end

    context 'with invalid params should not create categories for user' do
      it 'creates a new User' do
        expect do
          get :create, params: invalid_short_passwords
        end.to change(Category, :count).by(0)
      end
    end

    context 'passwords too short' do
      it 'does not create a new User' do
        expect do
          get :create, params: invalid_short_passwords
        end.to change(User, :count).by(0)
      end

      it 'returns a bad status code' do
        get :create, params: invalid_short_passwords
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end

    context 'different passwords' do
      it 'does not create a new User' do
        expect do
          get :create, params: invalid_different_passwords
        end.to change(User, :count).by(0)
      end

      it 'returns a bad status code' do
        get :create, params: invalid_different_passwords
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
