# frozen_string_literal: true

class Api::V1::UserCategoriesController < Api::V1::ApiController
  def set_user_category
    @category = fix_string(params[:category])
    @category_id = Category.find_by(name: @category)
    @user_id = User.find_by(username: params[:user])
    @usercategory = UserCategory.find_by(date: params[:date],
                                         category_id: @category_id,
                                         user_id: @user_id)

    if @usercategory
      new_progress = @usercategory.progress + params[:progress].to_i
      @usercategory.update(progress: new_progress)
      render json: { result: 'updated' }
    else
      @usercategory = UserCategory.new(date: params[:date],
                                       progress: params[:progress],
                                       user_id: @user_id.id,
                                       category_id: @category_id.id)
      @usercategory.save
      render json: { result: 'created' }
    end
  end

  private

  def fix_string(string)
    arr = ''
    no = ['%', '2', '0']
    string.split('').each do |e|
      if no.include? e
        arr += ' ' if e == '%'
      else
        arr += e
      end
    end
    arr
  end
end
