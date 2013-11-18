json.array!(@students) do |student|
  json.extract! student, :name, :email, :city, :state, :linkedin, :twitter, :github, :class, :unique
  json.url student_url(student, format: :json)
end
