class LicensePlatesController < ApplicationController
  before_action :set_license_plate, only: %i[ show edit update destroy ]

  # GET /license_plates or /license_plates.json
  def index
    @license_plates = LicensePlate.all
  end

  # GET /license_plates/1 or /license_plates/1.json
  def show
  end

  # GET /license_plates/new
  def new
    @license_plate = LicensePlate.new
  end

  # GET /license_plates/1/edit
  def edit
  end

  # POST /license_plates or /license_plates.json
  def create
    @license_plate = LicensePlate.new(license_plate_params)

    respond_to do |format|
      if @license_plate.save
        format.html { redirect_to @license_plate, notice: "License plate was successfully created." }
        format.json { render :show, status: :created, location: @license_plate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @license_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /license_plates/1 or /license_plates/1.json
  def update
    respond_to do |format|
      if @license_plate.update(license_plate_params)
        format.html { redirect_to @license_plate, notice: "License plate was successfully updated." }
        format.json { render :show, status: :ok, location: @license_plate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @license_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /license_plates/1 or /license_plates/1.json
  def destroy
    @license_plate.destroy
    respond_to do |format|
      format.html { redirect_to license_plates_url, notice: "License plate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_license_plate
      @license_plate = LicensePlate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def license_plate_params
      params.require(:license_plate).permit(:code, :owner, :model, :year)
    end
end
