class SightingsController < ApplicationController
    def index
        # @sighting = Sighting.find(params[:id])
        # render json: @sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
        sightings = Sighting.all
        # render json: sightings.to_json(:include => {
        #     :bird => {:only => [:name, :species]},
        #     :location => {:only => [:latitude, :longitude]}
        # },  :except =>[:updated_at])

        render json: SightingSerializer.new(sightings).to_serialized_json
    end

    def show
        # @sighting = Sighting.find(params[:id])
        # render json: @sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
        sighting = Sighting.find_by(id: params[:id])
        # render json: sighting.to_json(:include => {
        #     :bird => {:only => [:name, :species]},
        #     :location => {:only => [:latitude, :longitude]}
        # },  :except =>[:updated_at])
        render json: SightingSerializer.new(sighting).to_serialized_json
    end
end
