json.extract! student, :id, :name, :course, :code, :stock, :token, :level, :created_at, :updated_at
json.url student_url(student, format: :json)
