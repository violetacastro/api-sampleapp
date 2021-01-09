class Api::V1::TripsController < Api::ApplicationController

  def index
    trips = Trip.all
    trips = trips.map do |trip|
      { id: trip.id, name: trip.name, author_id: trip.author_id }
    end

    render json: { results: trips }.to_json, status: :ok
  end

end
