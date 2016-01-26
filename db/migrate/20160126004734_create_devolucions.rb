class CreateDevolucions < ActiveRecord::Migration
  def change
    create_table :devolucions do |t|
      t.integer :id_devolucion
      t.date :fecha_devolucion

      t.timestamps
    end
  end
end
