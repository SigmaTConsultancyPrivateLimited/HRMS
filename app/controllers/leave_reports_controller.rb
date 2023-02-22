class LeaveReportsController < ApplicationController
  before_action :set_leave_report, only: %i[ show edit update destroy ]

  # GET /leave_reports or /leave_reports.json
  def index
    @leave_reports = LeaveReport.all
  end

  # GET /leave_reports/1 or /leave_reports/1.json
  def show
  end

  # GET /leave_reports/new
  def new
    @leave_report = LeaveReport.new
  end

  # GET /leave_reports/1/edit
  def edit
  end

  # POST /leave_reports or /leave_reports.json
  def create
    @leave_report = LeaveReport.new(leave_report_params)

    respond_to do |format|
      if @leave_report.save
        format.html { redirect_to leave_report_url(@leave_report), notice: "Leave report was successfully created." }
        format.json { render :show, status: :created, location: @leave_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leave_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_reports/1 or /leave_reports/1.json
  def update
    respond_to do |format|
      if @leave_report.update(leave_report_params)
        format.html { redirect_to leave_report_url(@leave_report), notice: "Leave report was successfully updated." }
        format.json { render :show, status: :ok, location: @leave_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leave_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_reports/1 or /leave_reports/1.json
  def destroy
    @leave_report.destroy

    respond_to do |format|
      format.html { redirect_to leave_reports_url, notice: "Leave report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_report
      @leave_report = LeaveReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leave_report_params
      params.fetch(:leave_report, {})
    end
end
