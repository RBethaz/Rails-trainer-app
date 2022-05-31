json.extract! user, :id, :usename, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
