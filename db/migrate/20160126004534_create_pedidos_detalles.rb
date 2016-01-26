class CreatePedidosDetalles < ActiveRecord::Migration
  def change
    create_table :pedidos_detalles do |t|
      t.date :fecha_retiro
      t.date :fecha_dev

      t.timestamps
    end
  end
end
