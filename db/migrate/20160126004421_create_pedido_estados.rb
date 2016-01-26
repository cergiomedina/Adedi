class CreatePedidoEstados < ActiveRecord::Migration
  def change
    create_table :pedido_estados do |t|
      t.integer :id_est_pedido
      t.string :est_pedido

      t.timestamps
    end
  end
end
