json.extract! det_orden, :id, :producto_id, :cantidad, :precio_venta, :created_at, :updated_at
json.url det_orden_url(det_orden, format: :json)
