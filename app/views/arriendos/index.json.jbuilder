json.array!(@arriendos) do |arriendo|
  json.extract! arriendo, :id, :id_arriendo, :numero_disfraces, :fecha_arriendo, :estado_arriendo, :total_arriendo, :total_garantia
  json.url arriendo_url(arriendo, format: :json)
end
