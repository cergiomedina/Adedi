class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :id_cliente
      t.string :nombre_cliente
      t.string :apellido_cliente
      t.integer :rut_cliente
      t.string :correo_cliente
      t.string :direccion_cliente
      t.integer :telefono_cliente
      t.string :estado_cliente
      t.string :password_cliente

      t.timestamps
    end
  end
end
