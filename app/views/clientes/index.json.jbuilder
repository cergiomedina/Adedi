json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :id_cliente, :nombre_cliente, :apellido_cliente, :rut_cliente, :correo_cliente, :direccion_cliente, :telefono_cliente, :estado_cliente, :password_cliente
  json.url cliente_url(cliente, format: :json)
end
