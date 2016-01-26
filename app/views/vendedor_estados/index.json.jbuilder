json.array!(@vendedor_estados) do |vendedor_estado|
  json.extract! vendedor_estado, :id, :id_est_vendedor, :est_vendedor
  json.url vendedor_estado_url(vendedor_estado, format: :json)
end
