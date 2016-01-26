class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.integer :id_pedido
      t.date :fecha_pedido
      t.string :estado_pedido

      t.timestamps
    end
  end
end
