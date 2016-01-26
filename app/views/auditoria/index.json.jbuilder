json.array!(@auditoria) do |auditorium|
  json.extract! auditorium, :id, :id_log, :rut_usuario, :tabla_afectada, :instruccion, :datos_antes, :datos_despues, :fecha_modificacion
  json.url auditorium_url(auditorium, format: :json)
end
