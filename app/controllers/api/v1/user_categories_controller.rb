# frozen_string_literal: true

class Api::V1::UserCategoriesController < Api::V1::ApiController
  def setUserCategory
    @usercategory = UserCategory.find_by(date: params[:date])
    @user_id = User.find_by(username: params[:user]);
    @category_id = Category.find_by(category_id: params[:category])
    if @usercategory
      newProgress = @usercategory.progress + params[:progress].to_i
      @usercategory.update(progress: newProgress)
    else
      @usercategory = UserCategory.new(date: params[:date],
                                      progress: params[:progress],
                                      user_id: @user_id.id,
                                      category_id: @category_id.id)
      @usercategory.save
    end
  end
end
