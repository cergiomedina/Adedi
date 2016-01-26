json.array!(@devolucions) do |devolucion|
  json.extract! devolucion, :id, :id_devolucion, :fecha_devolucion
  json.url devolucion_url(devolucion, format: :json)
end
