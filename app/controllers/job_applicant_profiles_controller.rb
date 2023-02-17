class JobApplicantProfilesController < ApplicationController
  before_action :set_job_applicant_profile, only: %i[ show edit update destroy ]

  # GET /job_applicant_profiles or /job_applicant_profiles.json
  def index
    @job_applicant_profiles = JobApplicantProfile.all
  end

  # GET /job_applicant_profiles/1 or /job_applicant_profiles/1.json
  def show
  end

  # GET /job_applicant_profiles/new
  def new
    @job_applicant_profile = JobApplicantProfile.new
  end

  # GET /job_applicant_profiles/1/edit
  def edit
  end

  # POST /job_applicant_profiles or /job_applicant_profiles.json
  def create
    @job_applicant_profile = JobApplicantProfile.new(job_applicant_profile_params)

    respond_to do |format|
      if @job_applicant_profile.save
        format.html { redirect_to job_applicant_profile_url(@job_applicant_profile), notice: "Job applicant profile was successfully created." }
        format.json { render :show, status: :created, location: @job_applicant_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_applicant_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_applicant_profiles/1 or /job_applicant_profiles/1.json
  def update
    respond_to do |format|
      if @job_applicant_profile.update(job_applicant_profile_params)
        format.html { redirect_to job_applicant_profile_url(@job_applicant_profile), notice: "Job applicant profile was successfully updated." }
        format.json { render :show, status: :ok, location: @job_applicant_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_applicant_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_applicant_profiles/1 or /job_applicant_profiles/1.json
  def destroy
    @job_applicant_profile.destroy

    respond_to do |format|
      format.html { redirect_to job_applicant_profiles_url, notice: "Job applicant profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_applicant_profile
      @job_applicant_profile = JobApplicantProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_applicant_profile_params
      params.fetch(:job_applicant_profile, {})
    end
end
