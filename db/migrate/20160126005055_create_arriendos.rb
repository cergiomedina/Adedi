class CreateArriendos < ActiveRecord::Migration
  def change
    create_table :arriendos do |t|
      t.integer :id_arriendo
      t.integer :numero_disfraces
      t.date :fecha_arriendo
      t.string :estado_arriendo
      t.integer :total_arriendo
      t.integer :total_garantia

      t.timestamps
    end
  end
end
