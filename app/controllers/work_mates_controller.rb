class WorkMatesController < ApplicationController
  before_action :set_work_mate, only: %i[ show edit update destroy ]

  # GET /work_mates or /work_mates.json
  def index
    @work_mates = WorkMate.all
  end

  # GET /work_mates/1 or /work_mates/1.json
  def show
  end

  # GET /work_mates/new
  def new
    @work_mate = WorkMate.new
  end

  # GET /work_mates/1/edit
  def edit
  end

  # POST /work_mates or /work_mates.json
  def create
    work = Work.find(params[:work_id])
    redirect_to root_path, notice: 'Wrong work id' unless work
    @work_mate = WorkMate.new(producer: current_producer, work_id: params[:work_id])

    respond_to do |format|
      if @work_mate.save
        format.html { redirect_to @work_mate, notice: "Work mate was successfully created." }
        format.json { render :show, status: :created, location: @work_mate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_mates/1 or /work_mates/1.json
  def update
    respond_to do |format|
      if @work_mate.update(work_mate_params)
        format.html { redirect_to @work_mate, notice: "Work mate was successfully updated." }
        format.json { render :show, status: :ok, location: @work_mate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_mates/1 or /work_mates/1.json
  def destroy
    @work_mate.destroy
    respond_to do |format|
      format.html { redirect_to work_mates_url, notice: "Work mate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_mate
      @work_mate = WorkMate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_mate_params
      params.require(:work_mate).permit(:work_id, :state)
    end
end
