class LoginController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  layout "login"
  # GET /students
  # GET /students.json
  def index

  end

  def validate

    user = params["username"]
    @password = params["password"]
    p "aca"
    p user
    p "aca consulta"
    @student = Student.find_by(code: user)

    if @student != nil and @student.code.to_s == @password

      puts "Siiiiiiii"
      @student.generate_token
      @student = Student.find_by(code: user)
      session["token"] = @student.token

      if @student.level == 1
        #puts 1
        redirect_to student_home_path

      elsif @student.level == 4

        redirect_to admin_home_path

      end

    else

      redirect_to root_path, notice => "Datos incorrectos"

    end

  end

  def logout
    user = Student.where(token: session[:token]).first
    user.token = nil
    user.save
    redirect_to root_path
  end


end
