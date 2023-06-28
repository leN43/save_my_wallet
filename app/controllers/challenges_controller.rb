class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show]


  def index
    @challenges = Challenge.all
  end

  def show; end

  private
  def set_challenge
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:title, :description, :badge, :level)
  end
end
