# frozen_string_literal: true

class Api::V1::UserCategoriesController < Api::V1::ApiController
  def setUserCategory
    @usercategory = UserCategory.find_by(date: params[:date])
    if @usercategory
      newProgress = @usercategory.progress + params[:progress].to_i
      @usercategory.update(progress: newProgress)
    else
      @usercategory = UserCategory.new(date: params[:date],
                                      progress: params[:progress],
                                      user_id: params[:user],
                                      category_id: params[:category])
      @usercategory.save
    end
  end
end
