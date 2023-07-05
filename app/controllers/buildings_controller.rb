class BuildingsController < ApplicationController
  def index
    @buildings = Building.all.joins(:photo_id_attachment)
    render json: @buildings.map { |building| building.as_json(only: %i[id category]).merge( photo_id: url_for(building.photo_id))}
  end
end
