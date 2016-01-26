class CreateEjemplarEstados < ActiveRecord::Migration
  def change
    create_table :ejemplar_estados do |t|
      t.integer :id_estado_cliente
      t.string :est_ejemplar

      t.timestamps
    end
  end
end
