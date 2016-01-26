class CreateDetalleDevolucions < ActiveRecord::Migration
  def change
    create_table :detalle_devolucions do |t|
      t.integer :linea_detalle_dev

      t.timestamps
    end
  end
end
