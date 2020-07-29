# frozen_string_literal: true

class Api::V1::FormValuesController < Api::V1::ApiController
  def create_form_values
    form_values = FormValue.new(name: params[:name], phone: params[:phone], email: params[:email])

    if form_values.save
      render json: { result: 'created' }
    else
      render json: { result: 'not created' }
    end
  end

  def pull_form_values
    form_values = FormValue.all.order(created_at: :asc)
    render json: { form_values: form_values }
  end
end
