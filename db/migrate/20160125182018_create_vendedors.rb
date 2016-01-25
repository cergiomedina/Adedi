class CreateVendedors < ActiveRecord::Migration
  def change
    create_table :vendedors do |t|
      t.string :id_vendedor
      t.string :nombre_vendedor
      t.string :apellido_vendedor
      t.integer :rut_vendedor
      t.string :correo_vendedor
      t.string :direccion_vendedor
      t.integer :telefono_vendedor
      t.string :estado_vendedor
      t.string :password_vendedor

      t.timestamps
    end
  end
end
