class CreateClienteEstados < ActiveRecord::Migration
  def change
    create_table :cliente_estados do |t|
      t.integer :id_est_cliente
      t.string :est_cliente

      t.timestamps
    end
  end
end
