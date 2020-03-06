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
    if params[:password] === params[:repeat]
      @user = User.new(username: params[:username], password: params[:password])
      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    else
      render json: { result: 'Passwords do not match.' }
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

  def get_progress
    @user = User.find_by(username: params[:username])
    if @user
      @usercategories = @user.user_categories.where(date: params[:date])
      if @usercategories
        @send = []
        @usercategories.each do |usercategorie|
          @name = Category.find_by(id: usercategorie.category_id).name
          json = { name: @name, progress: usercategorie.progress }
          @send.push(json)
        end
        render json: { progress: @send }
      else
        render json: { result: 'Unable to find categories.' }
      end
    else
      render json: { result: 'Unable to find user.' }
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
