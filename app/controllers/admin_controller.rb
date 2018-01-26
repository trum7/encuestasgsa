class AdminController < ApplicationController


  # GET /students
  # GET /students.json

  def home
    @active = Student.where(token: session["token"]).first
    p "-----------------"
    p @active
    if @active.level == 4

      @proffesors = Courseprofesor.where(course: @active.course)
      @proffesors.each do |t|
        puts t.profesor
      end
    else
      redirect_to root_path
    end
  end

  def borrarEstudiantes
    Student.where(level: 1).delete_all
    redirect_to admin_home_path

  end

  def borrarEncuestas
    Encuestum.delete_all
    redirect_to admin_home_path

  end

  def borrarProfesores
    Courseprofesor.delete_all
    redirect_to admin_home_path

  end

  def cargar
    @active = Student.where(token: session["token"]).first
  end

  def cargarcourse
    @active = Student.where(token: session["token"]).first
  end


  def subir
    @active = Student.where(token: session["token"]).first
    valores1 = params[:information].split("\r\n")
    valores1.each do |t|
      valores = t.split(',')
      a = Student.new
      a.code = valores[0].strip
      a.name = valores[1].strip
      a.course = valores[2].strip
      a.level = 1
      a.save
    end

    redirect_to admin_home_path

  end


  def subircourse
    @active = Student.where(token: session["token"]).first
    valores1 = params[:information].split("\r\n")
    valores1.each do |t|
      valores = t.split(',')
      a = Courseprofesor.new
      a.profesor = valores[0].strip
      a.subject = valores[1].strip
      a.course = valores[2].strip
      a.save
    end

    redirect_to admin_home_path

  end

end
