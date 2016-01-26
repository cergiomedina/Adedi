class CreateArriendoEstados < ActiveRecord::Migration
  def change
    create_table :arriendo_estados do |t|
      t.integer :id_est_arriendo
      t.string :est_arriendo

      t.timestamps
    end
  end
end
