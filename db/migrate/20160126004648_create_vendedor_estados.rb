class CreateVendedorEstados < ActiveRecord::Migration
  def change
    create_table :vendedor_estados do |t|
      t.integer :id_est_vendedor
      t.string :est_vendedor

      t.timestamps
    end
  end
end
