class CreateTransicionEstPedidos < ActiveRecord::Migration
  def change
    create_table :transicion_est_pedidos do |t|
      t.string :est_ini_pedido
      t.string :est_fin_pedido

      t.timestamps
    end
  end
end
