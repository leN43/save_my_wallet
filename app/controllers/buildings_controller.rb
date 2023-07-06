class BuildingsController < ApplicationController
  before_action :cors_set_access_control_headers
  def index
    @buildings = Building.all.joins(:photo_id_attachment)
    render json: @buildings.map { |building| building.as_json(only: %i[id category level]).merge( photo_id: url_for(building.photo_id))}
  end

  private
  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
