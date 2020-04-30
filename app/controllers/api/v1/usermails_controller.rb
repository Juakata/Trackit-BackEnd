# frozen_string_literal: true

class Api::V1::UsermailsController < Api::V1::ApiController
  def create
    usermail = Usermail.new(params[:name], params[:phonenumber])
    if usermail.save
      render json: { result: 'Created' }
    else
      render json: { result: 'Not Created' }
    end
  end

  def pull_usermail
    usermail = Usermail.find_by(name: params[:name])
    if usermail
      render json: { usermail: usermail }
    else
      render json: { result: 'Not Found' }
    end
  end
end
