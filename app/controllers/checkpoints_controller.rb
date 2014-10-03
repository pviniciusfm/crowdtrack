class CheckpointsController < ApplicationController
  before_action :set_checkpoint, only: [:show, :edit, :update, :destroy]

  # GET /checkpoints
  def index
    @checkpoints = Checkpoint.all
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
      redirect_to @checkpoint, notice: 'Checkpoint was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /checkpoints/1
  def update
    if @checkpoint.update(checkpoint_params)
      redirect_to @checkpoint, notice: 'Checkpoint was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /checkpoints/1
  def destroy
    @checkpoint.destroy
    redirect_to checkpoints_url, notice: 'Checkpoint was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkpoint
      @checkpoint = Checkpoint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def checkpoint_params
      params.require(:checkpoint).permit(:label, :geo_coordinate)
    end
end
