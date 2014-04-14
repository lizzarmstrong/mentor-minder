json.array!(@mentors) do |mentor|
  json.extract! mentor, :id, :name, :email, :gender
  json.url mentor_url(mentor, format: :json)
end
