json.array!(@parametro_sistemas) do |parametro_sistema|
  json.extract! parametro_sistema, :id, :id_parametro, :nombre_parametro, :valor_parametro
  json.url parametro_sistema_url(parametro_sistema, format: :json)
end
