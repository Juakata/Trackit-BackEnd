# frozen_string_literal: true

class Api::V1::CategoriesController < Api::V1::ApiController
  def index
    @categories = User.find_by(username: params[:username]).categories.all

    render json: @categories
  end

end
