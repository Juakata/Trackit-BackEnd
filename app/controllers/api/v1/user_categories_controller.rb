# frozen_string_literal: true

class Api::V1::UserCategoriesController < Api::V1::ApiController
  def setUserCategory
    @category_id = Category.find_by(name: params[:category])
    @usercategory = UserCategory.find_by(date: params[:date], category_id: @category_id)
    @user_id = User.find_by(username: params[:user])

    if @usercategory
      newProgress = @usercategory.progress + params[:progress].to_i
      @usercategory.update(progress: newProgress)
      render json: { result: "updated" }
    else
      @usercategory = UserCategory.new(date: params[:date],
                                      progress: params[:progress],
                                      user_id: @user_id.id,
                                      category_id: @category_id.id)
      @usercategory.save
      render json: { result: "created" }
    end
  end
end
