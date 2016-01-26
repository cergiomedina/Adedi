json.array!(@ejemplar_estados) do |ejemplar_estado|
  json.extract! ejemplar_estado, :id, :id_estado_cliente, :est_ejemplar
  json.url ejemplar_estado_url(ejemplar_estado, format: :json)
end
