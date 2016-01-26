class CreateEjemplars < ActiveRecord::Migration
  def change
    create_table :ejemplars do |t|
      t.integer :id_ejemplar
      t.string :talla_ejemplar
      t.string :color_ejemplar
      t.string :estado_ejemplar
      t.string :precio_ejemplar

      t.timestamps
    end
  end
end
