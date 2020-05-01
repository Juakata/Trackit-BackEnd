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
    usermail = Usermail.find(params[:id])
    if usermail
      render json: { name: usermail.name }
    else
      render json: { result: 'Not Found' }
    end
  end

  def pull_mailusers
    mailusers = Usermail.where('id != (?)', params[:id])
    if mailusers
      render json: { mailusers: mailusers }
    else
      render json: { result: 'Empty' }
    end
  end
end
