class CreateDetalleArriendos < ActiveRecord::Migration
  def change
    create_table :detalle_arriendos do |t|
      t.integer :linea_detalle_arriendo
      t.integer :garantia_arriendo
      t.integer :precio_arriendo
      t.integer :diferencia_dinero

      t.timestamps
    end
  end
end
