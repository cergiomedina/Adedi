class CreateNotaDeVenta < ActiveRecord::Migration
  def change
    create_table :nota_de_venta do |t|
      t.integer :id_nota
      t.integer :total_nota

      t.timestamps
    end
  end
end
