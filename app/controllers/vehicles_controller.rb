class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy, :qrcode]

  # GET /vehicles
  def index
    @vehicles = Vehicle.all
  end

  # GET /vehicles/1
  def show
  end

  # GET /vehicles/new
  def new
    @vehicle = Vehicle.new
  end

  # GET /vehicles/1/edit
  def edit
  end

  # GET /vehicles/1/qrcode
  def qrcode
    @qr = RQRCode::QRCode.new( @vehicle.id.to_s, :size => 4, :level => :h )
    puts @qr.to_s
    respond_to do |format|
      format.html { render :layout => false }
    end
  end

  # POST /vehicles
  def create
    @vehicle = Vehicle.new(vehicle_params)

    if @vehicle.save
      redirect_to @vehicle, notice: 'Veículo criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /vehicles/1
  def update
    if @vehicle.update(vehicle_params)
      redirect_to @vehicle, notice: 'Veículo alterado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /vehicles/1
  def destroy
    @vehicle.destroy
    redirect_to vehicles_url, notice: 'Vehicle was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def vehicle_params
    params.require(:vehicle).permit(:description, :public_identifier, :company_id)
  end
end
