class StudnetAttendingsController < ApplicationController
  before_action :set_studnet_attending, only: %i[ show edit update destroy ]

  # GET /studnet_attendings or /studnet_attendings.json
  def index
    @studnet_attendings = StudnetAttending.all
  end

  # GET /studnet_attendings/1 or /studnet_attendings/1.json
  def show
  end

  # GET /studnet_attendings/new
  def new
    @studnet_attending = StudnetAttending.new
    @attendings = Attending.all
    @studnets = Student.all
  end

  # GET /studnet_attendings/1/edit
  def edit
  end

  # POST /studnet_attendings or /studnet_attendings.json
  def create
    @studnet_attending = StudnetAttending.new(studnet_attending_params)

    respond_to do |format|
      if @studnet_attending.save
        format.html { redirect_to @studnet_attending, notice: "Studnet attending was successfully created." }
        format.json { render :show, status: :created, location: @studnet_attending }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studnet_attending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studnet_attendings/1 or /studnet_attendings/1.json
  def update
    respond_to do |format|
      if @studnet_attending.update(studnet_attending_params)
        format.html { redirect_to @studnet_attending, notice: "Studnet attending was successfully updated." }
        format.json { render :show, status: :ok, location: @studnet_attending }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studnet_attending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studnet_attendings/1 or /studnet_attendings/1.json
  def destroy
    @studnet_attending.destroy
    respond_to do |format|
      format.html { redirect_to studnet_attendings_url, notice: "Studnet attending was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studnet_attending
      @studnet_attending = StudnetAttending.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def studnet_attending_params
      params.require(:studnet_attending).permit(:student_id, :attending_id)
    end
end
