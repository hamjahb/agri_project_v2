class FertilizerHistoriesController < ApplicationController
  before_action :set_fertilizer_history, only: [:show, :edit, :update, :destroy]

  # GET /fertilizer_histories
  # GET /fertilizer_histories.json
  def index
    @fertilizer_histories = FertilizerHistory.all
  end

  # GET /fertilizer_histories/1
  # GET /fertilizer_histories/1.json
  def show
  end

  # GET /fertilizer_histories/new
  def new
    @fertilizer_history = FertilizerHistory.new
  end

  # GET /fertilizer_histories/1/edit
  def edit
  end

  # POST /fertilizer_histories
  # POST /fertilizer_histories.json
  def create
    @fertilizer_history = FertilizerHistory.new(fertilizer_history_params)

    respond_to do |format|
      if @fertilizer_history.save
        format.html { redirect_to @fertilizer_history, notice: 'Fertilizer history was successfully created.' }
        format.json { render :show, status: :created, location: @fertilizer_history }
      else
        format.html { render :new }
        format.json { render json: @fertilizer_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fertilizer_histories/1
  # PATCH/PUT /fertilizer_histories/1.json
  def update
    respond_to do |format|
      if @fertilizer_history.update(fertilizer_history_params)
        format.html { redirect_to @fertilizer_history, notice: 'Fertilizer history was successfully updated.' }
        format.json { render :show, status: :ok, location: @fertilizer_history }
      else
        format.html { render :edit }
        format.json { render json: @fertilizer_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fertilizer_histories/1
  # DELETE /fertilizer_histories/1.json
  def destroy
    @fertilizer_history.destroy
    respond_to do |format|
      format.html { redirect_to fertilizer_histories_url, notice: 'Fertilizer history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fertilizer_history
      @fertilizer_history = FertilizerHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fertilizer_history_params
      params.require(:fertilizer_history).permit(:fertilizer_id, :quantity, :zone_id, :empoyee)
    end
end
