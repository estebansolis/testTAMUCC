json.array!(@students) do |student|
  json.extract! student, :id, :UIN, :First_Name, :Last_Name, :Email, :Phone_Number
  json.url student_url(student, format: :json)
end
