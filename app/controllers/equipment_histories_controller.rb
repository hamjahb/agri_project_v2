class EquipmentHistoriesController < ApplicationController
  before_action :set_equipment_history, only: [:show, :edit, :update, :destroy]

  # GET /equipment_histories
  # GET /equipment_histories.json
  def index
    @equipment_histories = EquipmentHistory.all
  end

  # GET /equipment_histories/1
  # GET /equipment_histories/1.json
  def show
  end

  # GET /equipment_histories/new
  def new
    @equipment_history = EquipmentHistory.new
  end

  # GET /equipment_histories/1/edit
  def edit
  end

  # POST /equipment_histories
  # POST /equipment_histories.json
  def create
    @equipment_history = EquipmentHistory.new(equipment_history_params)

    respond_to do |format|
      if @equipment_history.save
        format.html { redirect_to @equipment_history, notice: 'Equipment history was successfully created.' }
        format.json { render :show, status: :created, location: @equipment_history }
      else
        format.html { render :new }
        format.json { render json: @equipment_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_histories/1
  # PATCH/PUT /equipment_histories/1.json
  def update
    respond_to do |format|
      if @equipment_history.update(equipment_history_params)
        format.html { redirect_to @equipment_history, notice: 'Equipment history was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment_history }
      else
        format.html { render :edit }
        format.json { render json: @equipment_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_histories/1
  # DELETE /equipment_histories/1.json
  def destroy
    @equipment_history.destroy
    respond_to do |format|
      format.html { redirect_to equipment_histories_url, notice: 'Equipment history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_history
      @equipment_history = EquipmentHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_history_params
      params.require(:equipment_history).permit(:date, :task, :description, :next_maintinance, :equipment_id, :employee)
    end
end
