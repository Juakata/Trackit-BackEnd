# frozen_string_literal: true

class Api::V1::CategoriesController < Api::V1::ApiController
  def index
    @categories = User.find_by(username: params[:username]).categories.all

    render json: @categories
  end

  def update_goals
    @user = User.find_by(username: params[:username])
    if @user
      @user.categories.find(1).update(goal_time: params[:net])
      @user.categories.find(2).update(goal_time: params[:look])
      @user.categories.find(3).update(goal_time: params[:cod])
      @user.categories.find(4).update(goal_time: params[:rel])
    end
  end
end
