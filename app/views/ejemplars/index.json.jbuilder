json.array!(@ejemplars) do |ejemplar|
  json.extract! ejemplar, :id, :id_ejemplar, :talla_ejemplar, :color_ejemplar, :estado_ejemplar, :precio_ejemplar
  json.url ejemplar_url(ejemplar, format: :json)
end
