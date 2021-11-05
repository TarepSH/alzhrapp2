class AttendingsController < ApplicationController
  before_action :set_attending, only: %i[ show edit update destroy ]

  # GET /attendings or /attendings.json
  def index
    @attendings = Attending.order("name").page(params[:page]).per(7)
    
  end

  # GET /attendings/1 or /attendings/1.json
  def show
  end

  # GET /attendings/new
  def new
    @attending = Attending.new
  end

  # GET /attendings/1/edit
  def edit
    #@students =Student.all 
    @studentsfornotteacher = Student.where.not(studentclass_id: current_teacher.Studentclass)  
    @studentsforteacher = Student.where(studentclass_id: current_teacher.Studentclass)  
    
  end

  # POST /attendings or /attendings.json
  def create
    @attending = Attending.new(attending_params)
    respond_to do |format|
      if @attending.save
        format.html { redirect_to @attending, notice: "Attending was successfully created." }
        format.json { render :show, status: :created, location: @attending }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendings/1 or /attendings/1.json
  def update
    respond_to do |format|
      if @attending.update(attending_params)
        format.html { redirect_to "/attendings", notice: "تم تسجيل حضور الطلاب بنجاح." }
        format.json { render :show, status: :ok, location: @attending }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendings/1 or /attendings/1.json
  def destroy
    @attending.destroy
    respond_to do |format|
      format.html { redirect_to attendings_url, notice: "Attending was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attending
      @attending = Attending.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attending_params
      params.require(:attending).permit(:name, :student_ids, student_ids: [])
    end
end
