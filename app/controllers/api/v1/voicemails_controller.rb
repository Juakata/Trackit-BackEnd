# frozen_string_literal: true

class Api::V1::VoicemailsController < Api::V1::ApiController
  def pull_voicemails
    voicemails = Voicemail.where('to_id = (?) AND from_id = (?)',
      params[:receiver],
      params[:sender]).order(created_at: :asc)
    if voicemails
      send = []
      voicemails.each do |voice|
        from = Usermail.find(voice.from_id)
        to = Usermail.find(voice.to_id)
        send.push({
          id: voice.id,
          status: voice.status,
          from: from.name,
          to: to.name,
          duration: voice.duration})
      end
      render json: { messages: send }
    else
      render json: { result: 'Not results' }
    end
  end

  def update_message
    voicemail = Voicemail.find(params[:id])
    voicemail.update_attribute(:status, params[:status])
    render json: { result: 'Updated' }
  end
end
