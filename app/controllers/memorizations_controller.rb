class MemorizationsController < ApplicationController
  before_action :set_memorization, only: %i[ show edit update destroy ]

  # GET /memorizations or /memorizations.json
  def index
    @memorizations = Memorization.all
  end

  # GET /memorizations/1 or /memorizations/1.json
  def show
  end

  # GET /memorizations/new
  def new
    @memorization = Memorization.new
  end

  # GET /memorizations/1/edit
  def edit
  end

  # POST /memorizations or /memorizations.json
  def create
    @memorization = Memorization.new(memorization_params)

    respond_to do |format|
      if @memorization.save
        format.html { redirect_to @memorization, notice: "Memorization was successfully created." }
        format.json { render :show, status: :created, location: @memorization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @memorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memorizations/1 or /memorizations/1.json
  def update
    respond_to do |format|
      if @memorization.update(memorization_params)
        format.html { redirect_to @memorization, notice: "Memorization was successfully updated." }
        format.json { render :show, status: :ok, location: @memorization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @memorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memorizations/1 or /memorizations/1.json
  def destroy
    @memorization.destroy
    respond_to do |format|
      format.html { redirect_to memorizations_url, notice: "Memorization was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorization
      @memorization = Memorization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def memorization_params
      params.require(:memorization).permit(:name, :page, :part)
    end
end
