class CreateTransicionEstClientes < ActiveRecord::Migration
  def change
    create_table :transicion_est_clientes do |t|
      t.string :est_ini_cliente
      t.string :est_fin_cliente

      t.timestamps
    end
  end
end
