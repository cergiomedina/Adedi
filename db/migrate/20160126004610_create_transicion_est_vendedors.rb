class CreateTransicionEstVendedors < ActiveRecord::Migration
  def change
    create_table :transicion_est_vendedors do |t|
      t.string :est_ini_vendedor
      t.string :est_fin_vendedor

      t.timestamps
    end
  end
end
