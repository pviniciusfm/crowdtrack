class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]

  # GET /routes
  def index
    @routes = Route.all
  end

  # GET /routes/1
  def show
  end

  # GET /routes/new
  def new
    @route = Route.new
  end

  # GET /routes/1/edit
  def edit
  end

  # POST /routes
  def create
    @route = Route.new(route_params)

    set_initial_and_final_chk_points

    if @route.save
      redirect_to @route, notice: 'Rota criada com sucesso'
    else
      render :new
    end
  end

  # PATCH/PUT /routes/1
  def update

    set_initial_and_final_chk_points

    if @route.update(route_params)
      redirect_to @route, notice: 'Route atualizada.'
    else
      render :edit
    end
  end

  # DELETE /routes/1
  def destroy
    @route.destroy
    redirect_to routes_url, notice: 'Route removida.'
  end

  private

  def set_initial_and_final_chk_points
    lastRow = firstRow = nil
    @route.checkpoints.each do |checkpoint|
      if (!lastRow and !firstRow) then lastRow = firstRow = checkpoint; end
      if(lastRow.row_order > checkpoint.row_order) then lastRow = checkpoint end
      if(firstRow.row_order < checkpoint.row_order) then firstRow = checkpoint end
      @route.initial_checkpoint = firstRow
      @route.final_checkpoint = lastRow
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_route
    @route = Route.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def route_params
    params.require(:route).permit(:label, :company_id, :initial_checkpoint_id, :final_checkpoint_id, checkpoints_attributes: [:id, :label, :latitude,:longitude, :row_order, :_destroy])
  end
end
