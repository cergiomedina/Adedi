json.array!(@cliente_estados) do |cliente_estado|
  json.extract! cliente_estado, :id, :id_est_cliente, :est_cliente
  json.url cliente_estado_url(cliente_estado, format: :json)
end
