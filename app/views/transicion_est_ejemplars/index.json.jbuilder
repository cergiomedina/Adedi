json.array!(@transicion_est_ejemplars) do |transicion_est_ejemplar|
  json.extract! transicion_est_ejemplar, :id, :est_ini_ejemplar, :est_fin_ejemplar
  json.url transicion_est_ejemplar_url(transicion_est_ejemplar, format: :json)
end
