json.array!(@vendedors) do |vendedor|
  json.extract! vendedor, :id, :nombre_vendedor, :apellido_vendedor, :rut_vendedor, :correo_vendedor, :direccion_vendedor, :telefono_vendedor, :estado_vendedor, :password_vendedor
  json.url vendedor_url(vendedor, format: :json)
end
