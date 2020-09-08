class Api::V1::TripsController < Api::ApplicationController
  skip_before_action :authenticate_request

  def index
    trips = Trip.all
    trips = trips.map do |trip|
      { id: trip.id, name: trip.name }
    end

    render json: { results: trips }.to_json, status: :ok
  end

end
