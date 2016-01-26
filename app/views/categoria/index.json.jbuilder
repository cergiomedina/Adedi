json.array!(@categoria) do |categorium|
  json.extract! categorium, :id, :id_categoria, :nombre_categoria, :stock_categoria
  json.url categorium_url(categorium, format: :json)
end
