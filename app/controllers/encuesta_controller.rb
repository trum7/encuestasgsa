class EncuestaController < ApplicationController
  before_action :set_encuestum, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session

  # GET /encuesta
  # GET /encuesta.json
  def index

  end

  def encuesta

    @active = Student.where(token: session["token"]).first
    p session["token"]

    session[:subject] = params[:subject]
  end

  # GET /encuesta/1
  # GET /encuesta/1.json
  def show
  end


  def save
    @active = Student.where(token: params["student"]).first
    p "aca"
    puts session["token"]
    p "aca"
    puts @active
    @encuesta = Encuestum.new
    @encuesta.p1 = params[:p1]
    @encuesta.p2 = params[:p2]
    @encuesta.p3 = params[:p3]
    @encuesta.p4 = params[:p4]
    @encuesta.p5 = params[:p5]
    @encuesta.p6 = params[:p6]
    @encuesta.p7 = params[:p7]
    @encuesta.p8 = params[:p8]
    @encuesta.p9 = params[:p9]
    @encuesta.p10 = params[:p10]
    @encuesta.p11 = params[:p11]
    @encuesta.p12 = params[:p12]
    @encuesta.p13 = params[:p13]
    @encuesta.p14 = params[:p14]
    @encuesta.p15 = params[:p15]
    @encuesta.p16 = params[:p16]
    @encuesta.p17 = params[:p17]
    @encuesta.p18 = params[:p18]
    @encuesta.p19 = params[:p19]
    @encuesta.p20 = params[:p20]
    @encuesta.p21 = params[:p21]
    @encuesta.p22 = params[:p22]
    @encuesta.p23 = params[:p23]
    @encuesta.p24 = params[:p24]
    @encuesta.bueno = params[:bueno]
    @encuesta.mejorar = params[:mejorar]
    @encuesta.student = @active.code
    @encuesta.profesor = session[:profesor]
    @encuesta.subject = session[:subject]

    @encuesta.save

    redirect_to student_home_path

  end

  # GET /encuesta/new
  def new
    @encuestum = Encuestum.new
  end

  def generate
    session[:profesor] = params[:profe]
    @active = Student.where(token: session["token"]).first
    @subjects = Courseprofesor.where(profesor: session[:profesor], course: @active.course )
  end

  # GET /encuesta/1/edit
  def edit
  end

  # POST /encuesta
  # POST /encuesta.json
  def create
    @encuestum = Encuestum.new(encuestum_params)

    respond_to do |format|
      if @encuestum.save
        format.html { redirect_to @encuestum, notice: 'Encuestum was successfully created.' }
        format.json { render :show, status: :created, location: @encuestum }
      else
        format.html { render :new }
        format.json { render json: @encuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encuesta/1
  # PATCH/PUT /encuesta/1.json
  def update
    respond_to do |format|
      if @encuestum.update(encuestum_params)
        format.html { redirect_to @encuestum, notice: 'Encuestum was successfully updated.' }
        format.json { render :show, status: :ok, location: @encuestum }
      else
        format.html { render :edit }
        format.json { render json: @encuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encuesta/1
  # DELETE /encuesta/1.json
  def destroy
    @encuestum.destroy
    respond_to do |format|
      format.html { redirect_to encuesta_url, notice: 'Encuestum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encuestum
      @encuestum = Encuestum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encuestum_params
      params.require(:encuestum).permit(:profesor, :subject, :student, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11, :p12, :p13, :p14, :p15, :p16, :p17, :p18, :p19, :p20, :p21, :p22, :p23, :p24, :bueno, :mejorar, :subject)
    end
end
