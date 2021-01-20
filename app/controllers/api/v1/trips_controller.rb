class Api::V1::TripsController < Api::ApplicationController

  def index
    trips = Trip.all
    trips = trips.map do |trip|
      { id: trip.id, name: trip.name, author_id: trip.author_id }
    end

    render json: { results: trips }.to_json, status: :ok
  end

  def show
    # get one trip with ID
    trip = Trip.find_by(id: params[:id])

    if !trip
      render json: { error: true, message: "Trip not found" }, status: 400
    else
      render json: { trip: trip }, status: 200
    end
  end
end
