json.extract! donation, :id, :name, :instrument, :condition, :model, :location, :email, :created_at, :updated_at
json.url donation_url(donation, format: :json)
