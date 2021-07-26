class StudentclassesController < ApplicationController
  before_action :set_studentclass, only: %i[ show edit update destroy ]

  # GET /studentclasses or /studentclasses.json
  def index
    @studentclasses = Studentclass.all
  end

  # GET /studentclasses/1 or /studentclasses/1.json
  def show
  end

  # GET /studentclasses/new
  def new
    @studentclass = Studentclass.new
  end

  # GET /studentclasses/1/edit
  def edit
  end

  # POST /studentclasses or /studentclasses.json
  def create
    @studentclass = Studentclass.new(studentclass_params)

    respond_to do |format|
      if @studentclass.save
        format.html { redirect_to @studentclass, notice: "Studentclass was successfully created." }
        format.json { render :show, status: :created, location: @studentclass }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studentclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentclasses/1 or /studentclasses/1.json
  def update
    respond_to do |format|
      if @studentclass.update(studentclass_params)
        format.html { redirect_to @studentclass, notice: "Studentclass was successfully updated." }
        format.json { render :show, status: :ok, location: @studentclass }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studentclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentclasses/1 or /studentclasses/1.json
  def destroy
    @studentclass.destroy
    respond_to do |format|
      format.html { redirect_to studentclasses_url, notice: "Studentclass was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentclass
      @studentclass = Studentclass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def studentclass_params
      params.require(:studentclass).permit(:name, :students_id)
    end
end
