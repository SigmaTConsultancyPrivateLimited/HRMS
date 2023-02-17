class PayslipsController < ApplicationController
  before_action :set_payslip, only: %i[ show edit update destroy ]

  # GET /payslips or /payslips.json
  def index
    @payslips = Payslip.all
  end

  # GET /payslips/1 or /payslips/1.json
  def show
  end

  # GET /payslips/new
  def new
    @payslip = Payslip.new
  end

  # GET /payslips/1/edit
  def edit
  end

  # POST /payslips or /payslips.json
  def create
    @payslip = Payslip.new(payslip_params)

    respond_to do |format|
      if @payslip.save
        format.html { redirect_to payslip_url(@payslip), notice: "Payslip was successfully created." }
        format.json { render :show, status: :created, location: @payslip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payslip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payslips/1 or /payslips/1.json
  def update
    respond_to do |format|
      if @payslip.update(payslip_params)
        format.html { redirect_to payslip_url(@payslip), notice: "Payslip was successfully updated." }
        format.json { render :show, status: :ok, location: @payslip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payslip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payslips/1 or /payslips/1.json
  def destroy
    @payslip.destroy

    respond_to do |format|
      format.html { redirect_to payslips_url, notice: "Payslip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payslip
      @payslip = Payslip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payslip_params
      params.fetch(:payslip, {})
    end
end
