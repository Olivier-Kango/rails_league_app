class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to players_path, notice: "Player was successfully created"
    else
      render :new
    end
  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :age, :team_id)
  end

end
