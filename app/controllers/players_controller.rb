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
      flash[:errors] = @player.errors.full_messages
      render :new
    end
  end

  def destroy
    player = Player.find(params[:id])

   if player.destroy
      redirect_to root_path, notice: "Player was deleted successfully."
    else
      redirect_to root_path, alert: "An error has occurred while deleting player, try again."
    end
  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :age, :team_id)
  end
end
