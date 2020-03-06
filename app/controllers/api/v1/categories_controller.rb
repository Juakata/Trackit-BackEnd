# frozen_string_literal: true

class Api::V1::CategoriesController < Api::V1::ApiController
  def index
    @categories = User.find_by(username: params[:username]).categories.all

    render json: @categories
  end

  def update_goals
    @user = User.find_by(username: params[:username])
    if @user
      @user.categories.find_by(name: "Networking").update(goal_time: params[:net])
      @user.categories.find_by(name: "Looking for job").update(goal_time: params[:look])
      @user.categories.find_by(name: "Coding Challenges").update(goal_time: params[:cod])
      @user.categories.find_by(name: "Relaxing").update(goal_time: params[:rel])
    end
  end
end
