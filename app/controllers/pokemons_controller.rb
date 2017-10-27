class PokemonsController < ApplicationController

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save!
    redirect_to '/'
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health = @pokemon.health - 10
    @pokemon.save!
    if @pokemon.health == 0
      @pokemon.destroy
    end
    redirect_to current_trainer
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new
    @pokemon.name = pokemon_params[:name]
    @pokemon.level = 1
    @pokemon.health = 100
    @pokemon.trainer = current_trainer
    if @pokemon.save!
      redirect_to current_trainer
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
  end

  private
    def pokemon_params
      params.require(:pokemon).permit(:name)
    end

end
