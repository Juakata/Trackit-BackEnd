# frozen_string_literal: true

class Api::V1::SessionsController < Api::V1::ApiController
  def create
    @user = User.find_by(username: params[:username])

    if @user
      if @user.password == params[:password]
        render json: @user
      else
        render json: { result: "wrong_password" }
      end
    else
      render json: { result: "not_found" }
    end
  end
end
