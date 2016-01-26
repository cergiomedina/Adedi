class CreateTransicionEstEjemplars < ActiveRecord::Migration
  def change
    create_table :transicion_est_ejemplars do |t|
      t.string :est_ini_ejemplar
      t.string :est_fin_ejemplar

      t.timestamps
    end
  end
end
