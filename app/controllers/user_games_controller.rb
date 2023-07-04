class UserGamesController < ApplicationController
  before_action :set_user_game, only: %i[show destroy]


  def index
    @user_games = UserGame.all
    if @user_games.any?
      # @user_challenges = Challenge.joins(:user_games).distinct #test include
      @user_challenges = Challenge.includes(:user_games)
    else
      @user_challenges = nil
    end
  end

  def new
    @challenges = Challenge.all
    @user_game = UserGame.new
  end

  def create
    @user_game = UserGame.new(user_game_params)
    @user_game.user_id = current_user.id
    @user_game.challenge_id = params[:user_game][:challenge_id]
    @user_game.status = false
    if @user_game.save
      respond_to do |format|
        format.html { redirect_to user_games_path }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def destroy
    if @user_game.destroy
      redirect_to user_games_path
    else
      render :index
    end
  end

  private

  def user_game_params
    params.require(:user_game).permit(:user_id, :challenge_id)
  end

  def set_challenge
    @challenge = Challenge.find(params[:challenge_id])
  end

  def set_user_game
    @user_game = UserGame.find(params[:id])
  end
end
