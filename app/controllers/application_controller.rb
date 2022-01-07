require "pry"

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/attractions" do
    
    { message: "Good luck with your project!" }.to_json
  end

  get "/locations" do
    locations = Location.all
    locations.to_json(
    include: :attractions
    )
  end

  get "/locations/:id" do
    location = Location.find(params[:id])
    location.to_json
  end

  get "/locations/:id/attractions" do
    location = Location.find(params[:id])
    location.attractions.to_json
  end

  post "/locations" do
    location = Location.create(
      city: params[:city],
      state: params[:state],
      country: params[:country]
    )
    location.to_json(
    include: :attractions
    )
  end

  get "/attractions/:id" do
    attraction = Attraction.find(params[:id])
    attraction.to_json
  end

  post "/attractions" do
    attraction = Attraction.create(
      name: params[:name],
      attraction_type: params[:attraction_type],
      notes: params[:notes],
      location_id: params[:location_id]
    )
    # binding.pry
    attraction.to_json
  end

  delete "/locations/:id" do
    location = Location.find(params[:id])
    location.destroy
    location.to_json
  end

  # Not used yet
  delete "/attractions/:id" do
    attraction = Attraction.find(params[:id])
    attraction.destroy
    attraction.to_json
  end

end
