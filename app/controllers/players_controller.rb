class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
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


  def update
    @player = Player.find(params[:id])
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to player_url(@player), notice: "Player was successfully updated." }
        format.json { render :show, status: :ok, location: @friend }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
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
    params.require(:player).permit(:first_name, :last_name, :age, :description, :team_id)
  end
end
