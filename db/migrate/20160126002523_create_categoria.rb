class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.integer :id_categoria
      t.string :nombre_categoria
      t.integer :stock_categoria

      t.timestamps
    end
  end
end
