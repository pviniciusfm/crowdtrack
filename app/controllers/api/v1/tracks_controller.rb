class Api::TracksController < Api::BaseController
  before_action :set_track, only: [:show, :edit, :update, :destroy]
  before_filter :fetch_user

  # GET /tracks
  def index
    if not params[:search].nil?
      @tracks = Track.search_route params[:search]
      render json: @tracks
    end
  end

  def search

  end

  # GET /tracks/1
  def show
  end

  # GET /tracks/new
  def new
    @track = Track.new
  end

  # GET /tracks/1/edit
  def edit
  end

  # POST /tracks
  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to @track, notice: 'Track was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tracks/1
  def update
    if @track.update(track_params)
      redirect_to @track, notice: 'Track was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tracks/1
  def destroy
    @track.destroy
    redirect_to tracks_url, notice: 'Track was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_track
    @track = Track.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def track_params
    params.require(:track).permit(:trip_id, :latitude, :longitude, :accuracy)
  end
end
