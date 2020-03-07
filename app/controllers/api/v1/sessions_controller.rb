# frozen_string_literal: true

class Api::V1::SessionsController < Api::V1::ApiController
  def create
    @user = User.find_by(username: params[:username])

    if @user
      if @user.password == params[:password]
        render json: @user, status: :ok
      else
        render json: { result: "wrong_password" }, status: :unprocessable_entity
      end
    else
      render json: { result: "not_found" }, status: :unprocessable_entity
    end
  end
end
