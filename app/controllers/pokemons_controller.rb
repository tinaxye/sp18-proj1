class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
  end

  def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health = @pokemon.health - 10
    @pokemon.save
    if @pokemon.health <= 0
        @pokemon.destroy
    end
    redirect_to trainer_path(current_trainer)
  end

  def create
    @pokemon = Pokemon.create(pokemon_params)
    @pokemon.trainer = current_trainer
    @pokemon.trainer_id = current_trainer.id
    @pokemon.level = 1
    @pokemon.health = 100
    if @pokemon.save
			redirect_to trainer_path(current_trainer)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			render :new
		end
  end

  def pokemon_params
    params.require(:pokemon).permit(:name, :ndex)
  end
end
