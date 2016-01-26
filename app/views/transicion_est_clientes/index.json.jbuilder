json.array!(@transicion_est_clientes) do |transicion_est_cliente|
  json.extract! transicion_est_cliente, :id, :est_ini_cliente, :est_fin_cliente
  json.url transicion_est_cliente_url(transicion_est_cliente, format: :json)
end
