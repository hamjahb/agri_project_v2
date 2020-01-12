class ZoneHistoriesController < ApplicationController
  before_action :set_zone_history, only: [:show, :edit, :update, :destroy]

  # GET /zone_histories
  # GET /zone_histories.json
  def index
    @zone_histories = ZoneHistory.all
  end

  # GET /zone_histories/1
  # GET /zone_histories/1.json
  def show
  end

  # GET /zone_histories/new
  def new
    @zone_history = ZoneHistory.new
  end

  # GET /zone_histories/1/edit
  def edit
  end

  # POST /zone_histories
  # POST /zone_histories.json
  def create
    @zone_history = ZoneHistory.new(zone_history_params)

    respond_to do |format|
      if @zone_history.save
        format.html { redirect_to @zone_history, notice: 'Zone history was successfully created.' }
        format.json { render :show, status: :created, location: @zone_history }
      else
        format.html { render :new }
        format.json { render json: @zone_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zone_histories/1
  # PATCH/PUT /zone_histories/1.json
  def update
    respond_to do |format|
      if @zone_history.update(zone_history_params)
        format.html { redirect_to @zone_history, notice: 'Zone history was successfully updated.' }
        format.json { render :show, status: :ok, location: @zone_history }
      else
        format.html { render :edit }
        format.json { render json: @zone_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zone_histories/1
  # DELETE /zone_histories/1.json
  def destroy
    @zone_history.destroy
    respond_to do |format|
      format.html { redirect_to zone_histories_url, notice: 'Zone history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zone_history
      @zone_history = ZoneHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zone_history_params
      params.require(:zone_history).permit(:task, :zone_id, :employee)
    end
end
