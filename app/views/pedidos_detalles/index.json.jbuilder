json.array!(@pedidos_detalles) do |pedidos_detalle|
  json.extract! pedidos_detalle, :id, :fecha_retiro, :fecha_dev
  json.url pedidos_detalle_url(pedidos_detalle, format: :json)
end
