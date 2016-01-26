json.array!(@transicion_arriendos) do |transicion_arriendo|
  json.extract! transicion_arriendo, :id, :est_ini_arriendo, :est_fin_arriendo
  json.url transicion_arriendo_url(transicion_arriendo, format: :json)
end
