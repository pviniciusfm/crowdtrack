class CheckpointsController < ApplicationController
  before_action :set_checkpoint, only: [:show, :edit, :update, :destroy]

  # GET /checkpoints
  def index
    @checkpoints = Route.checkpoints
  end

  # GET /checkpoints/1
  def show
  end

  # GET /checkpoints/new
  def new
    @checkpoint = Checkpoint.new
  end

  # GET /checkpoints/1/edit
  def edit
  end

  # POST /checkpoints
  def create
    @checkpoint = Checkpoint.new(checkpoint_params)

    if @checkpoint.save
      redirect_to @checkpoint, notice: 'Checkpoint registrado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /checkpoints/1
  def update
    if @checkpoint.update(checkpoint_params)
      redirect_to @checkpoint, notice: 'Checkpoint atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /checkpoints/1
  def destroy
    @checkpoint.destroy
    redirect_to checkpoints_url, notice: 'Checkpoint excluído com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkpoint
      @route = Route.find(params[:route_id])
      @checkpoint = Checkpoint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def checkpoint_params
      params.require(:checkpoint).permit(:label, :geo_coordinate)
    end
end
