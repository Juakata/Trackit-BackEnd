# frozen_string_literal: true

class Api::V1::VoicemailsController < Api::V1::ApiController
  def pull_voicemails
    voicemails = Voicemail.where('to_id = (?) AND from_id = (?)',
      params[:receiver],
      params[:sender])
    if voicemails
      render json: { voicemails: voicemails }
    else
      render json: { result: 'Not results' }
    end
  end
end
