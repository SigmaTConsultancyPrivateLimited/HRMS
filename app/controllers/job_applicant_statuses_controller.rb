class JobApplicantStatusesController < ApplicationController
  before_action :set_job_applicant_status, only: %i[ show edit update destroy ]

  # GET /job_applicant_statuses or /job_applicant_statuses.json
  def index
    @job_applicant_statuses = JobApplicantStatus.all
  end

  # GET /job_applicant_statuses/1 or /job_applicant_statuses/1.json
  def show
  end

  # GET /job_applicant_statuses/new
  def new
    @job_applicant_status = JobApplicantStatus.new
  end

  # GET /job_applicant_statuses/1/edit
  def edit
  end

  # POST /job_applicant_statuses or /job_applicant_statuses.json
  def create
    @job_applicant_status = JobApplicantStatus.new(job_applicant_status_params)

    respond_to do |format|
      if @job_applicant_status.save
        format.html { redirect_to job_applicant_status_url(@job_applicant_status), notice: "Job applicant status was successfully created." }
        format.json { render :show, status: :created, location: @job_applicant_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_applicant_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_applicant_statuses/1 or /job_applicant_statuses/1.json
  def update
    respond_to do |format|
      if @job_applicant_status.update(job_applicant_status_params)
        format.html { redirect_to job_applicant_status_url(@job_applicant_status), notice: "Job applicant status was successfully updated." }
        format.json { render :show, status: :ok, location: @job_applicant_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_applicant_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_applicant_statuses/1 or /job_applicant_statuses/1.json
  def destroy
    @job_applicant_status.destroy

    respond_to do |format|
      format.html { redirect_to job_applicant_statuses_url, notice: "Job applicant status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_applicant_status
      @job_applicant_status = JobApplicantStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_applicant_status_params
      params.fetch(:job_applicant_status, {})
    end
end
