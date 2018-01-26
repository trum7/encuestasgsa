class CourseprofesorsController < ApplicationController
  before_action :set_courseprofesor, only: [:show, :edit, :update, :destroy]

  # GET /courseprofesors
  # GET /courseprofesors.json
  def index
    @courseprofesors = Courseprofesor.all
  end

  # GET /courseprofesors/1
  # GET /courseprofesors/1.json
  def show
  end

  # GET /courseprofesors/new
  def new
    @courseprofesor = Courseprofesor.new
  end

  # GET /courseprofesors/1/edit
  def edit
  end

  # POST /courseprofesors
  # POST /courseprofesors.json
  def create
    @courseprofesor = Courseprofesor.new(courseprofesor_params)

    respond_to do |format|
      if @courseprofesor.save
        format.html { redirect_to @courseprofesor, notice: 'Courseprofesor was successfully created.' }
        format.json { render :show, status: :created, location: @courseprofesor }
      else
        format.html { render :new }
        format.json { render json: @courseprofesor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courseprofesors/1
  # PATCH/PUT /courseprofesors/1.json
  def update
    respond_to do |format|
      if @courseprofesor.update(courseprofesor_params)
        format.html { redirect_to @courseprofesor, notice: 'Courseprofesor was successfully updated.' }
        format.json { render :show, status: :ok, location: @courseprofesor }
      else
        format.html { render :edit }
        format.json { render json: @courseprofesor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courseprofesors/1
  # DELETE /courseprofesors/1.json
  def destroy
    @courseprofesor.destroy
    respond_to do |format|
      format.html { redirect_to courseprofesors_url, notice: 'Courseprofesor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_courseprofesor
      @courseprofesor = Courseprofesor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def courseprofesor_params
      params.require(:courseprofesor).permit(:profesor, :course, :subject)
    end
end
