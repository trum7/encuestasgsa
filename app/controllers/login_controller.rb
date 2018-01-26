class LoginController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  layout "login"
  # GET /students
  # GET /students.json
  def index

  end

  def validate

    @code = params["username"]
    @password = params["password"]

    @student = Student.where(code: @code).first
    puts  @student.code
    if @student != nil and @student.code.to_s == @password

      puts "Siiiiiiii"
      @student.generate_token
      @student = Student.where(code: @code).first
      session["token"] = @student.token

      if @student.level == 1
        #puts 1
        redirect_to student_home_path

      end

    else

      puts "Noooooooo"

    end

  end


end
