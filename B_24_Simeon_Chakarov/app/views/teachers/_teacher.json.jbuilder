json.extract! teacher, :id, :firstname, :middlename, :title, :subject, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
