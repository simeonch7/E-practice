class TeacherSchoolclassesController < ApplicationController
  before_action :set_teacher_schoolclass, only: [:show, :edit, :update, :destroy]

  # GET /teacher_schoolclasses
  # GET /teacher_schoolclasses.json
  def index
    @teacher_schoolclasses = TeacherSchoolclass.all
    @teachers = Teacher.all
		@schoolclasses = Schoolclass.all
  end

  # GET /teacher_schoolclasses/1
  # GET /teacher_schoolclasses/1.json
  def show
  end

  # GET /teacher_schoolclasses/new
  def new
    @teacher_schoolclass = TeacherSchoolclass.new
  end

  # GET /teacher_schoolclasses/1/edit
  def edit
  end

  # POST /teacher_schoolclasses
  # POST /teacher_schoolclasses.json
  def create
    @teacher_schoolclass = TeacherSchoolclass.new(teacher_schoolclass_params)

    respond_to do |format|
      if @teacher_schoolclass.save
        format.html { redirect_to @teacher_schoolclass, notice: 'Teacher schoolclass was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_schoolclass }
      else
        format.html { render :new }
        format.json { render json: @teacher_schoolclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_schoolclasses/1
  # PATCH/PUT /teacher_schoolclasses/1.json
  def update
    respond_to do |format|
      if @teacher_schoolclass.update(teacher_schoolclass_params)
        format.html { redirect_to @teacher_schoolclass, notice: 'Teacher schoolclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_schoolclass }
      else
        format.html { render :edit }
        format.json { render json: @teacher_schoolclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_schoolclasses/1
  # DELETE /teacher_schoolclasses/1.json
  def destroy
    @teacher_schoolclass.destroy
    respond_to do |format|
      format.html { redirect_to teacher_schoolclasses_url, notice: 'Teacher schoolclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_schoolclass
      @teacher_schoolclass = TeacherSchoolclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_schoolclass_params
      params.require(:teacher_schoolclass).permit(:teacher_id, :schoolclass_id)
    end
end
