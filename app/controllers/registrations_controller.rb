# frozen_string_literal: true

class RegistrationsController < ApplicationController
  before_action :set_data

  # POST /register
  def create
    if @user && @event
      Registration.create!(event_params)
      render json: @event, status: :created
    else
      render status: :bad_request
    end
  end

  # GET /registrations
  def index
    render json: @user&.registrations
  end

  private
  def set_data
    @user = User.find_by(id: params[:user_id])
    @event = Event.find_by(id: params[:event_id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:registration).permit(:user_id, :event_id)
  end
end
