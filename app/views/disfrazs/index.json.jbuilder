json.array!(@disfrazs) do |disfraz|
  json.extract! disfraz, :id, :id_disfraz, :categoria_disfraz, :stock_disfraz, :stock_disponible
  json.url disfraz_url(disfraz, format: :json)
end
