class StudnetMemorizationsController < ApplicationController
  before_action :set_studnet_memorization, only: %i[ show edit update destroy ]

  # GET /studnet_memorizations or /studnet_memorizations.json
  def index
    @studnet_memorizations = StudnetMemorization.all
  end

  # GET /studnet_memorizations/1 or /studnet_memorizations/1.json
  def show
  end

  # GET /studnet_memorizations/new
  def new
    @studnet_memorization = StudnetMemorization.new
  end

  # GET /studnet_memorizations/1/edit
  def edit
  end

  # POST /studnet_memorizations or /studnet_memorizations.json
  def create
    @studnet_memorization = StudnetMemorization.new(studnet_memorization_params)

    respond_to do |format|
      if @studnet_memorization.save
        format.html { redirect_to @studnet_memorization, notice: "Studnet memorization was successfully created." }
        format.json { render :show, status: :created, location: @studnet_memorization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studnet_memorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studnet_memorizations/1 or /studnet_memorizations/1.json
  def update
    respond_to do |format|
      if @studnet_memorization.update(studnet_memorization_params)
        format.html { redirect_to @studnet_memorization, notice: "Studnet memorization was successfully updated." }
        format.json { render :show, status: :ok, location: @studnet_memorization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studnet_memorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studnet_memorizations/1 or /studnet_memorizations/1.json
  def destroy
    @studnet_memorization.destroy
    respond_to do |format|
      format.html { redirect_to studnet_memorizations_url, notice: "Studnet memorization was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studnet_memorization
      @studnet_memorization = StudnetMemorization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def studnet_memorization_params
      params.require(:studnet_memorization).permit(:student_id, :memorization_id)
    end
end
