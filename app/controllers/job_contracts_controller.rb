class JobContractsController < ApplicationController
  before_action :set_job_contract, only: %i[ show edit update destroy ]

  # GET /job_contracts or /job_contracts.json
  def index
    @job_contracts = JobContract.all
  end

  # GET /job_contracts/1 or /job_contracts/1.json
  def show
  end

  # GET /job_contracts/new
  def new
    @job_contract = JobContract.new
  end

  # GET /job_contracts/1/edit
  def edit
  end

  # POST /job_contracts or /job_contracts.json
  def create
    @job_contract = JobContract.new(job_contract_params)

    respond_to do |format|
      if @job_contract.save
        format.html { redirect_to job_contract_url(@job_contract), notice: "Job contract was successfully created." }
        format.json { render :show, status: :created, location: @job_contract }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_contracts/1 or /job_contracts/1.json
  def update
    respond_to do |format|
      if @job_contract.update(job_contract_params)
        format.html { redirect_to job_contract_url(@job_contract), notice: "Job contract was successfully updated." }
        format.json { render :show, status: :ok, location: @job_contract }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_contracts/1 or /job_contracts/1.json
  def destroy
    @job_contract.destroy

    respond_to do |format|
      format.html { redirect_to job_contracts_url, notice: "Job contract was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_contract
      @job_contract = JobContract.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_contract_params
      params.fetch(:job_contract, {})
    end
end
