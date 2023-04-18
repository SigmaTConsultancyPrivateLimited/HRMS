class EmmployeesController < ApplicationController
  before_action :set_emmployee, only: %i[ show edit update destroy ]

  # GET /emmployees or /emmployees.json
  def index
    @emmployees = Emmployee.all
  end

  # GET /emmployees/1 or /emmployees/1.json
  def show
  end

  # GET /emmployees/new
  def new
    @emmployee = Emmployee.new
  end

  # GET /emmployees/1/edit
  def edit
  end

  # POST /emmployees or /emmployees.json
  def create
    @emmployee = Emmployee.new(emmployee_params)

    respond_to do |format|
      if @emmployee.save
        format.html { redirect_to emmployee_url(@emmployee), notice: "Emmployee was successfully created." }
        format.json { render :show, status: :created, location: @emmployee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emmployee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emmployees/1 or /emmployees/1.json
  def update
    respond_to do |format|
      if @emmployee.update(emmployee_params)
        format.html { redirect_to emmployee_url(@emmployee), notice: "Emmployee was successfully updated." }
        format.json { render :show, status: :ok, location: @emmployee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emmployee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emmployees/1 or /emmployees/1.json
  def destroy
    @emmployee.destroy

    respond_to do |format|
      format.html { redirect_to emmployees_url, notice: "Emmployee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emmployee
      @emmployee = Emmployee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emmployee_params
      params.fetch(:emmployee, {})
    end
end
