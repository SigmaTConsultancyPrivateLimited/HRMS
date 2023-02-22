class PerformanceRecordsController < ApplicationController
  before_action :set_performance_record, only: %i[ show edit update destroy ]

  # GET /performance_records or /performance_records.json
  def index
    @performance_records = PerformanceRecord.all
  end

  # GET /performance_records/1 or /performance_records/1.json
  def show
  end

  # GET /performance_records/new
  def new
    @performance_record = PerformanceRecord.new
  end

  # GET /performance_records/1/edit
  def edit
  end

  # POST /performance_records or /performance_records.json
  def create
    @performance_record = PerformanceRecord.new(performance_record_params)

    respond_to do |format|
      if @performance_record.save
        format.html { redirect_to performance_record_url(@performance_record), notice: "Performance record was successfully created." }
        format.json { render :show, status: :created, location: @performance_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @performance_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performance_records/1 or /performance_records/1.json
  def update
    respond_to do |format|
      if @performance_record.update(performance_record_params)
        format.html { redirect_to performance_record_url(@performance_record), notice: "Performance record was successfully updated." }
        format.json { render :show, status: :ok, location: @performance_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @performance_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performance_records/1 or /performance_records/1.json
  def destroy
    @performance_record.destroy

    respond_to do |format|
      format.html { redirect_to performance_records_url, notice: "Performance record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performance_record
      @performance_record = PerformanceRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def performance_record_params
      params.fetch(:performance_record, {})
    end
end
