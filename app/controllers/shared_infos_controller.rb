class SharedInfosController < ApplicationController
  before_action :set_shared_info, only: [:show, :edit, :update, :destroy]

  # GET /shared_infos
  def index
    @trip = Trip.find(params[:trip_id])
    @shared_infos = SharedInfo.all
  end

  # GET /shared_infos/1
  def show
  end

  # GET /shared_infos/new
  def new
    @shared_info = SharedInfo.new
  end

  # GET /shared_infos/1/edit
  def edit
  end

  # POST /shared_infos
  def create
    @shared_info = SharedInfo.new(shared_info_params)

    if @shared_info.save
      redirect_to @shared_info, notice: 'Shared info was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /shared_infos/1
  def update
    if @shared_info.update(shared_info_params)
      redirect_to @shared_info, notice: 'Shared info was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /shared_infos/1
  def destroy
    @shared_info.destroy
    redirect_to shared_infos_url, notice: 'Shared info was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_info
      @shared_info = SharedInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shared_info_params
      params.require(:shared_info).permit(:capacity_rank, :traffic_rank, :comments, :trip_id, :user_id)
    end
end
