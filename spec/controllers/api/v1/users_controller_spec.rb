# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  # let(:valid_attributes) do
  #   {
  #     username: 'American Pie',
  #     password: 'TeenComedy',
  #     token: 'asd08adsa213sagfj56fg436jh'
  #   }
  # end
  #
  # let(:invalid_attributes) do
  #   { password: nil }
  # end
  #
  # describe 'GET #index' do
  #   it 'returns a success response' do
  #     get :index, params: {}
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe 'GET #show' do
  #   it 'returns a success response' do
  #     user = create(:user)
  #     get :show, params: { id: user.to_param }
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe 'POST #create' do
  #   context 'with valid params' do
  #     it 'creates a new User' do
  #       expect do
  #         post :create, params: { user: valid_attributes }
  #       end.to change(User, :count).by(1)
  #     end
  #
  #     it 'returns a 201 status code' do
  #       post :create, params: { user: valid_attributes }
  #       expect(response).to have_http_status(:created)
  #     end
  #   end
  #
  #   context 'with invalid params' do
  #     it 'does not create a new User' do
  #       expect do
  #         post :create, params: { user: invalid_attributes }
  #       end.to change(User, :count).by(0)
  #     end
  #
  #     it 'returns a 422 status code' do
  #       post :create, params: { user: invalid_attributes }
  #       expect(response).to have_http_status(:unprocessable_entity)
  #     end
  #   end
  # end
  #
  # describe 'PUT #update' do
  #   context 'with valid params' do
  #     let(:new_attributes) do
  #       {
  #         username: 'Americano',
  #         password: 'password123sad123'
  #       }
  #     end
  #
  #     it 'updates the requested user' do
  #       user = create(:user)
  #       put :update, params: { id: user.to_param, user: new_attributes }
  #       user.reload
  #       expect(user.attributes).to include('username' => 'Americano')
  #     end
  #
  #     it 'returns a 200 status code' do
  #       user = create(:user)
  #
  #       put :update, params: { id: user.to_param, user: valid_attributes }
  #       expect(response).to have_http_status(:ok)
  #     end
  #   end
  #
  #   context 'with invalid params' do
  #     it 'returns a 422 status code' do
  #       user = create(:user)
  #
  #       put :update, params: { id: user.to_param, user: invalid_attributes }
  #       expect(response).to have_http_status(:unprocessable_entity)
  #     end
  #   end
  # end
  #
  # describe 'DELETE #destroy' do
  #   it 'destroys the requested user' do
  #     user = create(:user)
  #     expect do
  #       delete :destroy, params: { id: user.to_param }
  #     end.to change(User, :count).by(-1)
  #   end
  # end
end
