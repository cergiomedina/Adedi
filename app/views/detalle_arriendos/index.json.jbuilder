json.array!(@detalle_arriendos) do |detalle_arriendo|
  json.extract! detalle_arriendo, :id, :linea_detalle_arriendo, :garantia_arriendo, :precio_arriendo, :diferencia_dinero
  json.url detalle_arriendo_url(detalle_arriendo, format: :json)
end
