class LeaveAllocationRequestsController < ApplicationController
  before_action :set_leave_allocation_request, only: %i[ show edit update destroy ]

  # GET /leave_allocation_requests or /leave_allocation_requests.json
  def index
    @leave_allocation_requests = LeaveAllocationRequest.all
  end

  # GET /leave_allocation_requests/1 or /leave_allocation_requests/1.json
  def show
  end

  # GET /leave_allocation_requests/new
  def new
    @leave_allocation_request = LeaveAllocationRequest.new
  end

  # GET /leave_allocation_requests/1/edit
  def edit
  end

  # POST /leave_allocation_requests or /leave_allocation_requests.json
  def create
    @leave_allocation_request = LeaveAllocationRequest.new(leave_allocation_request_params)

    respond_to do |format|
      if @leave_allocation_request.save
        format.html { redirect_to leave_allocation_request_url(@leave_allocation_request), notice: "Leave allocation request was successfully created." }
        format.json { render :show, status: :created, location: @leave_allocation_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leave_allocation_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_allocation_requests/1 or /leave_allocation_requests/1.json
  def update
    respond_to do |format|
      if @leave_allocation_request.update(leave_allocation_request_params)
        format.html { redirect_to leave_allocation_request_url(@leave_allocation_request), notice: "Leave allocation request was successfully updated." }
        format.json { render :show, status: :ok, location: @leave_allocation_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leave_allocation_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_allocation_requests/1 or /leave_allocation_requests/1.json
  def destroy
    @leave_allocation_request.destroy

    respond_to do |format|
      format.html { redirect_to leave_allocation_requests_url, notice: "Leave allocation request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_allocation_request
      @leave_allocation_request = LeaveAllocationRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leave_allocation_request_params
      params.fetch(:leave_allocation_request, {})
    end
end
