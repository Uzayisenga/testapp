json.extract! question, :id, :name, :question, :email, :time, :created_at, :updated_at
json.url question_url(question, format: :json)
