json.extract! warehouse_trasaction, :id, :item, :quantity, :warehouse_locations_id, :created_at, :updated_at
json.url warehouse_trasaction_url(warehouse_trasaction, format: :json)
