json.extract! item_date, :id, :itemcode, :itemname, :description, :created_at, :updated_at
json.url item_date_url(item_date, format: :json)
