class CityStatesController < ApplicationController
  before_action :set_city_state, only: [:show, :edit, :update, :destroy]

  # GET /city_states
  # GET /city_states.json
  def index
    @city_states = CityState.all
  end

  # GET /city_states/1
  # GET /city_states/1.json
  def show
  end

  # GET /city_states/new
  def new
    @city_state = CityState.new
  end

  # GET /city_states/1/edit
  def edit
  end

  # POST /city_states
  # POST /city_states.json
  def create
    @city_state = CityState.new(city_state_params)

    respond_to do |format|
      if @city_state.save
        format.html { redirect_to @city_state, notice: 'City state was successfully created.' }
        format.json { render :show, status: :created, location: @city_state }
      else
        format.html { render :new }
        format.json { render json: @city_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_states/1
  # PATCH/PUT /city_states/1.json
  def update
    respond_to do |format|
      if @city_state.update(city_state_params)
        format.html { redirect_to @city_state, notice: 'City state was successfully updated.' }
        format.json { render :show, status: :ok, location: @city_state }
      else
        format.html { render :edit }
        format.json { render json: @city_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_states/1
  # DELETE /city_states/1.json
  def destroy
    @city_state.destroy
    respond_to do |format|
      format.html { redirect_to city_states_url, notice: 'City state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_state
      @city_state = CityState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_state_params
      params.require(:city_state).permit(:city_id, :state_id)
    end
end
