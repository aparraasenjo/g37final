class TrackMatesController < ApplicationController
  before_action :set_track_mate, only: %i[ show edit update destroy ]

  # GET /track_mates or /track_mates.json
  def index
    @track_mates = TrackMate.all
  end

  # GET /track_mates/1 or /track_mates/1.json
  def show
  end

  # GET /track_mates/new
  def new
    @track_mate = TrackMate.new
  end

  # GET /track_mates/1/edit
  def edit
  end

  # POST /track_mates or /track_mates.json
  def create
    track = Track.find(params[:track_id])
    redirect_to root_path, notice: 'Wrong track id' unless track

    @track_mate = TrackMate.new(designer: current_designer, track_id: params[:track_id])

    respond_to do |format|
      if @track_mate.save
        format.html { redirect_to @track_mate, notice: "Track mate was successfully created." }
        format.json { render :show, status: :created, location: @track_mate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @track_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /track_mates/1 or /track_mates/1.json
  def update
    respond_to do |format|
      if @track_mate.update(track_mate_params)
        format.html { redirect_to @track_mate, notice: "Track mate was successfully updated." }
        format.json { render :show, status: :ok, location: @track_mate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @track_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /track_mates/1 or /track_mates/1.json
  def destroy
    @track_mate.destroy
    respond_to do |format|
      format.html { redirect_to track_mates_url, notice: "Track mate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track_mate
      @track_mate = TrackMate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def track_mate_params
      params.require(:track_mate).permit(:track_id, :state)
    end
end
