class JobVacanciesController < ApplicationController
  before_action :set_job_vacancy, only: %i[ show edit update destroy ]

  # GET /job_vacancies or /job_vacancies.json
  def index
    @job_vacancies = JobVacancy.all
  end

  # GET /job_vacancies/1 or /job_vacancies/1.json
  def show
  end

  # GET /job_vacancies/new
  def new
    @job_vacancy = JobVacancy.new
  end

  # GET /job_vacancies/1/edit
  def edit
  end

  # POST /job_vacancies or /job_vacancies.json
  def create
    @job_vacancy = JobVacancy.new(job_vacancy_params)

    respond_to do |format|
      if @job_vacancy.save
        format.html { redirect_to job_vacancy_url(@job_vacancy), notice: "Job vacancy was successfully created." }
        format.json { render :show, status: :created, location: @job_vacancy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_vacancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_vacancies/1 or /job_vacancies/1.json
  def update
    respond_to do |format|
      if @job_vacancy.update(job_vacancy_params)
        format.html { redirect_to job_vacancy_url(@job_vacancy), notice: "Job vacancy was successfully updated." }
        format.json { render :show, status: :ok, location: @job_vacancy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_vacancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_vacancies/1 or /job_vacancies/1.json
  def destroy
    @job_vacancy.destroy

    respond_to do |format|
      format.html { redirect_to job_vacancies_url, notice: "Job vacancy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_vacancy
      @job_vacancy = JobVacancy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_vacancy_params
      params.fetch(:job_vacancy, {})
    end
end
