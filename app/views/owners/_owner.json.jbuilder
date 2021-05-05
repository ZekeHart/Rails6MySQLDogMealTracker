json.extract! owner, :id, :first_name, :last_name, :email, :phone_number, :discarded_at, :created_at, :updated_at
json.url owner_url(owner, format: :json)
