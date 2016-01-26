json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :id_pedido, :fecha_pedido, :estado_pedido
  json.url pedido_url(pedido, format: :json)
end
