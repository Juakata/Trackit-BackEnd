# frozen_string_literal: true

class Api::V1::UsersController < Api::V1::ApiController
  before_action :set_user, only: %i[show update destroy]

  def index
    @users = User.all

    render json: @users
  end

  def show
    render json: @user
  end

  def create
    if params[:password] == params[:repeat]
      @user = User.new(username: params[:username], password: params[:password])
      if @user.save
        Category.create(name: 'Networking', goal_time: 7_200_000, user_id: @user.id)
        Category.create(name: 'Looking for job', goal_time: 7_200_000, user_id: @user.id)
        Category.create(name: 'Coding Challenges', goal_time: 7_200_000, user_id: @user.id)
        Category.create(name: 'Relaxing', goal_time: 7_200_000, user_id: @user.id)

        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    else
      render json: { status: 'Passwords do not match.' }, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  def pull_progress
    @user = User.find_by(username: params[:username])
    if @user
      @usercategories = @user.user_categories.where(date: params[:date]).order(updated_at: :desc)
      if @usercategories
        @send = []
        @usercategories.each do |usercategorie|
          @name = Category.find_by(id: usercategorie.category_id).name
          json = { id: usercategorie.id, name: @name, progress: usercategorie.progress }
          @send.push(json)
        end
        render json: @send, status: :ok
      else
        render json: { result: 'Unable to find categories.' }, status: :unprocessable_entity
      end
    else
      render json: { result: 'Unable to find user.' }, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
