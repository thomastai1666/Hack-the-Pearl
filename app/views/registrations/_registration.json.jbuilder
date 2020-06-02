json.extract! registration, :id, :first_name, :last_name, :organization, :linked_in, :email, :created_at, :updated_at
json.url registration_url(registration, format: :json)
