json.extract! client_datum, :id, :name, :code, :created_at, :updated_at
json.url client_datum_url(client_datum, format: :json)
