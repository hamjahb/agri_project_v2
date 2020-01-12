class WaterHistoriesController < ApplicationController
  before_action :set_water_history, only: [:show, :edit, :update, :destroy]

  # GET /water_histories
  # GET /water_histories.json
  def index
    @water_histories = WaterHistory.all
  end

  # GET /water_histories/1
  # GET /water_histories/1.json
  def show
  end

  # GET /water_histories/new
  def new
    @water_history = WaterHistory.new
  end

  # GET /water_histories/1/edit
  def edit
  end

  # POST /water_histories
  # POST /water_histories.json
  def create
    @water_history = WaterHistory.new(water_history_params)

    respond_to do |format|
      if @water_history.save
        format.html { redirect_to @water_history, notice: 'Water history was successfully created.' }
        format.json { render :show, status: :created, location: @water_history }
      else
        format.html { render :new }
        format.json { render json: @water_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_histories/1
  # PATCH/PUT /water_histories/1.json
  def update
    respond_to do |format|
      if @water_history.update(water_history_params)
        format.html { redirect_to @water_history, notice: 'Water history was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_history }
      else
        format.html { render :edit }
        format.json { render json: @water_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_histories/1
  # DELETE /water_histories/1.json
  def destroy
    @water_history.destroy
    respond_to do |format|
      format.html { redirect_to water_histories_url, notice: 'Water history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_history
      @water_history = WaterHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_history_params
      params.require(:water_history).permit(:start_time, :end_time, :quantity, :zone_id, :employee)
    end
end
