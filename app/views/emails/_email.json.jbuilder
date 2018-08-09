json.extract! email, :id, :name, :email, :subject, :message, :created_at, :updated_at
json.url email_url(email, format: :json)
