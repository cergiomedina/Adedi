class CreateTransicionArriendos < ActiveRecord::Migration
  def change
    create_table :transicion_arriendos do |t|
      t.string :est_ini_arriendo
      t.string :est_fin_arriendo

      t.timestamps
    end
  end
end
