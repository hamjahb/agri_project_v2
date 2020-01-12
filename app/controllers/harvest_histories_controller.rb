class HarvestHistoriesController < ApplicationController
  before_action :set_harvest_history, only: [:show, :edit, :update, :destroy]

  # GET /harvest_histories
  # GET /harvest_histories.json
  def index
    @harvest_histories = HarvestHistory.all
  end

  # GET /harvest_histories/1
  # GET /harvest_histories/1.json
  def show
  end

  # GET /harvest_histories/new
  def new
    @harvest_history = HarvestHistory.new
  end

  # GET /harvest_histories/1/edit
  def edit
  end

  # POST /harvest_histories
  # POST /harvest_histories.json
  def create
    @harvest_history = HarvestHistory.new(harvest_history_params)

    respond_to do |format|
      if @harvest_history.save
        format.html { redirect_to @harvest_history, notice: 'Harvest history was successfully created.' }
        format.json { render :show, status: :created, location: @harvest_history }
      else
        format.html { render :new }
        format.json { render json: @harvest_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harvest_histories/1
  # PATCH/PUT /harvest_histories/1.json
  def update
    respond_to do |format|
      if @harvest_history.update(harvest_history_params)
        format.html { redirect_to @harvest_history, notice: 'Harvest history was successfully updated.' }
        format.json { render :show, status: :ok, location: @harvest_history }
      else
        format.html { render :edit }
        format.json { render json: @harvest_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harvest_histories/1
  # DELETE /harvest_histories/1.json
  def destroy
    @harvest_history.destroy
    respond_to do |format|
      format.html { redirect_to harvest_histories_url, notice: 'Harvest history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harvest_history
      @harvest_history = HarvestHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def harvest_history_params
      params.require(:harvest_history).permit(:quantity, :price, :zone_id, :employee)
    end
end
