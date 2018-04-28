class PokemonAbilitiesController < ApplicationController
  before_action :set_pokemon_ability, only: [:show, :edit, :update, :destroy]

  # GET /pokemon_abilities
  # GET /pokemon_abilities.json
  def index
    @pokemon_abilities = PokemonAbility.all
  end

  # GET /pokemon_abilities/1
  # GET /pokemon_abilities/1.json
  def show
  end

  # GET /pokemon_abilities/new
  def new
    @pokemon_ability = PokemonAbility.new
  end

  # GET /pokemon_abilities/1/edit
  def edit
  end

  # POST /pokemon_abilities
  # POST /pokemon_abilities.json
  def create
    @pokemon_ability = PokemonAbility.new(pokemon_ability_params)

    respond_to do |format|
      if @pokemon_ability.save
        format.html { redirect_to @pokemon_ability, notice: 'Pokemon ability was successfully created.' }
        format.json { render :show, status: :created, location: @pokemon_ability }
      else
        format.html { render :new }
        format.json { render json: @pokemon_ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemon_abilities/1
  # PATCH/PUT /pokemon_abilities/1.json
  def update
    respond_to do |format|
      if @pokemon_ability.update(pokemon_ability_params)
        format.html { redirect_to @pokemon_ability, notice: 'Pokemon ability was successfully updated.' }
        format.json { render :show, status: :ok, location: @pokemon_ability }
      else
        format.html { render :edit }
        format.json { render json: @pokemon_ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemon_abilities/1
  # DELETE /pokemon_abilities/1.json
  def destroy
    @pokemon_ability.destroy
    respond_to do |format|
      format.html { redirect_to pokemon_abilities_url, notice: 'Pokemon ability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon_ability
      @pokemon_ability = PokemonAbility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokemon_ability_params
      params.require(:pokemon_ability).permit(:pokemon_id, :ability_id, :is_hidden, :slot)
    end
end
