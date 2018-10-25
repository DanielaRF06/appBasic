json.extract! cliente, :id, :rfc, :nom_cliente, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
